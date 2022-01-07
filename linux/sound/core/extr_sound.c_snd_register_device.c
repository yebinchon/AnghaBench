
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_minor {int type; int card; int device; struct device* dev; struct snd_card* card_ptr; void* private_data; struct file_operations const* f_ops; } ;
struct snd_card {int number; } ;
struct file_operations {int dummy; } ;
struct device {int devt; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MKDEV (int ,int) ;
 int device_add (struct device*) ;
 int kfree (struct snd_minor*) ;
 struct snd_minor* kmalloc (int,int ) ;
 int major ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_find_free_minor (int,struct snd_card*,int) ;
 struct snd_minor** snd_minors ;
 int sound_mutex ;

int snd_register_device(int type, struct snd_card *card, int dev,
   const struct file_operations *f_ops,
   void *private_data, struct device *device)
{
 int minor;
 int err = 0;
 struct snd_minor *preg;

 if (snd_BUG_ON(!device))
  return -EINVAL;

 preg = kmalloc(sizeof *preg, GFP_KERNEL);
 if (preg == ((void*)0))
  return -ENOMEM;
 preg->type = type;
 preg->card = card ? card->number : -1;
 preg->device = dev;
 preg->f_ops = f_ops;
 preg->private_data = private_data;
 preg->card_ptr = card;
 mutex_lock(&sound_mutex);
 minor = snd_find_free_minor(type, card, dev);
 if (minor < 0) {
  err = minor;
  goto error;
 }

 preg->dev = device;
 device->devt = MKDEV(major, minor);
 err = device_add(device);
 if (err < 0)
  goto error;

 snd_minors[minor] = preg;
 error:
 mutex_unlock(&sound_mutex);
 if (err < 0)
  kfree(preg);
 return err;
}
