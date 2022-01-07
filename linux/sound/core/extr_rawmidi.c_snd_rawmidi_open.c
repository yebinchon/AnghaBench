
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wait_queue_entry_t ;
struct snd_rawmidi_file {TYPE_4__* output; TYPE_2__* input; } ;
struct snd_rawmidi {struct snd_card* card; int open_mutex; int open_wait; } ;
struct snd_card {int module; scalar_t__ shutdown; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct snd_rawmidi_file* private_data; } ;
struct TYPE_8__ {TYPE_3__* runtime; } ;
struct TYPE_7__ {int oss; } ;
struct TYPE_6__ {TYPE_1__* runtime; } ;
struct TYPE_5__ {int oss; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int O_APPEND ;
 int O_NONBLOCK ;
 int SNDRV_DEVICE_TYPE_RAWMIDI ;
 int SNDRV_OSS_DEVICE_TYPE_MIDI ;
 unsigned short SNDRV_RAWMIDI_LFLG_APPEND ;
 int SND_CTL_SUBDEV_RAWMIDI ;
 int SOUND_MAJOR ;
 int TASK_INTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int imajor (struct inode*) ;
 int iminor (struct inode*) ;
 int init_waitqueue_entry (int *,int ) ;
 int kfree (struct snd_rawmidi_file*) ;
 struct snd_rawmidi_file* kmalloc (int,int ) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rawmidi_open_priv (struct snd_rawmidi*,int,unsigned short,struct snd_rawmidi_file*) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int snd_card_file_add (struct snd_card*,struct file*) ;
 int snd_card_file_remove (struct snd_card*,struct file*) ;
 int snd_card_unref (struct snd_card*) ;
 int snd_ctl_get_preferred_subdevice (struct snd_card*,int ) ;
 struct snd_rawmidi* snd_lookup_minor_data (int ,int ) ;
 struct snd_rawmidi* snd_lookup_oss_minor_data (int ,int ) ;
 int snd_major ;
 unsigned short snd_rawmidi_file_flags (struct file*) ;
 int stream_open (struct inode*,struct file*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int snd_rawmidi_open(struct inode *inode, struct file *file)
{
 int maj = imajor(inode);
 struct snd_card *card;
 int subdevice;
 unsigned short fflags;
 int err;
 struct snd_rawmidi *rmidi;
 struct snd_rawmidi_file *rawmidi_file = ((void*)0);
 wait_queue_entry_t wait;

 if ((file->f_flags & O_APPEND) && !(file->f_flags & O_NONBLOCK))
  return -EINVAL;

 err = stream_open(inode, file);
 if (err < 0)
  return err;

 if (maj == snd_major) {
  rmidi = snd_lookup_minor_data(iminor(inode),
           SNDRV_DEVICE_TYPE_RAWMIDI);





 } else
  return -ENXIO;

 if (rmidi == ((void*)0))
  return -ENODEV;

 if (!try_module_get(rmidi->card->module)) {
  snd_card_unref(rmidi->card);
  return -ENXIO;
 }

 mutex_lock(&rmidi->open_mutex);
 card = rmidi->card;
 err = snd_card_file_add(card, file);
 if (err < 0)
  goto __error_card;
 fflags = snd_rawmidi_file_flags(file);
 if ((file->f_flags & O_APPEND) || maj == SOUND_MAJOR)
  fflags |= SNDRV_RAWMIDI_LFLG_APPEND;
 rawmidi_file = kmalloc(sizeof(*rawmidi_file), GFP_KERNEL);
 if (rawmidi_file == ((void*)0)) {
  err = -ENOMEM;
  goto __error;
 }
 init_waitqueue_entry(&wait, current);
 add_wait_queue(&rmidi->open_wait, &wait);
 while (1) {
  subdevice = snd_ctl_get_preferred_subdevice(card, SND_CTL_SUBDEV_RAWMIDI);
  err = rawmidi_open_priv(rmidi, subdevice, fflags, rawmidi_file);
  if (err >= 0)
   break;
  if (err == -EAGAIN) {
   if (file->f_flags & O_NONBLOCK) {
    err = -EBUSY;
    break;
   }
  } else
   break;
  set_current_state(TASK_INTERRUPTIBLE);
  mutex_unlock(&rmidi->open_mutex);
  schedule();
  mutex_lock(&rmidi->open_mutex);
  if (rmidi->card->shutdown) {
   err = -ENODEV;
   break;
  }
  if (signal_pending(current)) {
   err = -ERESTARTSYS;
   break;
  }
 }
 remove_wait_queue(&rmidi->open_wait, &wait);
 if (err < 0) {
  kfree(rawmidi_file);
  goto __error;
 }






 file->private_data = rawmidi_file;
 mutex_unlock(&rmidi->open_mutex);
 snd_card_unref(rmidi->card);
 return 0;

 __error:
 snd_card_file_remove(card, file);
 __error_card:
 mutex_unlock(&rmidi->open_mutex);
 module_put(rmidi->card->module);
 snd_card_unref(rmidi->card);
 return err;
}
