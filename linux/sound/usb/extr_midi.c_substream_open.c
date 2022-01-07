
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_midi {int disc_rwsem; int mutex; int card; struct snd_kcontrol* roland_load_ctl; scalar_t__* opened; int list; scalar_t__ disconnected; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_kcontrol {int id; TYPE_2__* vd; } ;
struct TYPE_4__ {int access; } ;
struct TYPE_3__ {struct snd_usb_midi* private_data; } ;


 int ENODEV ;
 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int down_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_ctl_notify (int ,int ,int *) ;
 int snd_usbmidi_input_start (int *) ;
 int snd_usbmidi_input_stop (int *) ;
 int up_read (int *) ;
 int update_roland_altsetting (struct snd_usb_midi*) ;

__attribute__((used)) static int substream_open(struct snd_rawmidi_substream *substream, int dir,
     int open)
{
 struct snd_usb_midi *umidi = substream->rmidi->private_data;
 struct snd_kcontrol *ctl;

 down_read(&umidi->disc_rwsem);
 if (umidi->disconnected) {
  up_read(&umidi->disc_rwsem);
  return open ? -ENODEV : 0;
 }

 mutex_lock(&umidi->mutex);
 if (open) {
  if (!umidi->opened[0] && !umidi->opened[1]) {
   if (umidi->roland_load_ctl) {
    ctl = umidi->roland_load_ctl;
    ctl->vd[0].access |=
     SNDRV_CTL_ELEM_ACCESS_INACTIVE;
    snd_ctl_notify(umidi->card,
           SNDRV_CTL_EVENT_MASK_INFO, &ctl->id);
    update_roland_altsetting(umidi);
   }
  }
  umidi->opened[dir]++;
  if (umidi->opened[1])
   snd_usbmidi_input_start(&umidi->list);
 } else {
  umidi->opened[dir]--;
  if (!umidi->opened[1])
   snd_usbmidi_input_stop(&umidi->list);
  if (!umidi->opened[0] && !umidi->opened[1]) {
   if (umidi->roland_load_ctl) {
    ctl = umidi->roland_load_ctl;
    ctl->vd[0].access &=
     ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
    snd_ctl_notify(umidi->card,
           SNDRV_CTL_EVENT_MASK_INFO, &ctl->id);
   }
  }
 }
 mutex_unlock(&umidi->mutex);
 up_read(&umidi->disc_rwsem);
 return 0;
}
