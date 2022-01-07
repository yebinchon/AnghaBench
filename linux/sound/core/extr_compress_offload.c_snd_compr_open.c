
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int direction; struct snd_compr_runtime* runtime; struct snd_compr* device; int private_data; TYPE_1__* ops; int error_work; } ;
struct snd_compr_runtime {TYPE_2__ stream; int sleep; int state; } ;
struct snd_compr_file {TYPE_2__ stream; int sleep; int state; } ;
struct snd_compr {int direction; int card; int lock; TYPE_1__* ops; int private_data; } ;
struct inode {int dummy; } ;
struct file {int f_flags; void* private_data; } ;
typedef enum snd_compr_direction { ____Placeholder_snd_compr_direction } snd_compr_direction ;
struct TYPE_3__ {int (* open ) (TYPE_2__*) ;} ;


 int EBADFD ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int O_WRONLY ;
 int SNDRV_DEVICE_TYPE_COMPRESS ;
 int SNDRV_PCM_STATE_OPEN ;
 int SND_COMPRESS_CAPTURE ;
 int SND_COMPRESS_PLAYBACK ;
 int error_delayed_work ;
 int imajor (struct inode*) ;
 int iminor (struct inode*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct snd_compr_runtime*) ;
 struct snd_compr_runtime* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int snd_card_unref (int ) ;
 struct snd_compr* snd_lookup_minor_data (int ,int ) ;
 int snd_major ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int snd_compr_open(struct inode *inode, struct file *f)
{
 struct snd_compr *compr;
 struct snd_compr_file *data;
 struct snd_compr_runtime *runtime;
 enum snd_compr_direction dirn;
 int maj = imajor(inode);
 int ret;

 if ((f->f_flags & O_ACCMODE) == O_WRONLY)
  dirn = SND_COMPRESS_PLAYBACK;
 else if ((f->f_flags & O_ACCMODE) == O_RDONLY)
  dirn = SND_COMPRESS_CAPTURE;
 else
  return -EINVAL;

 if (maj == snd_major)
  compr = snd_lookup_minor_data(iminor(inode),
     SNDRV_DEVICE_TYPE_COMPRESS);
 else
  return -EBADFD;

 if (compr == ((void*)0)) {
  pr_err("no device data!!!\n");
  return -ENODEV;
 }

 if (dirn != compr->direction) {
  pr_err("this device doesn't support this direction\n");
  snd_card_unref(compr->card);
  return -EINVAL;
 }

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data) {
  snd_card_unref(compr->card);
  return -ENOMEM;
 }

 INIT_DELAYED_WORK(&data->stream.error_work, error_delayed_work);

 data->stream.ops = compr->ops;
 data->stream.direction = dirn;
 data->stream.private_data = compr->private_data;
 data->stream.device = compr;
 runtime = kzalloc(sizeof(*runtime), GFP_KERNEL);
 if (!runtime) {
  kfree(data);
  snd_card_unref(compr->card);
  return -ENOMEM;
 }
 runtime->state = SNDRV_PCM_STATE_OPEN;
 init_waitqueue_head(&runtime->sleep);
 data->stream.runtime = runtime;
 f->private_data = (void *)data;
 mutex_lock(&compr->lock);
 ret = compr->ops->open(&data->stream);
 mutex_unlock(&compr->lock);
 if (ret) {
  kfree(runtime);
  kfree(data);
 }
 snd_card_unref(compr->card);
 return ret;
}
