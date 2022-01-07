
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_compr {int lock; TYPE_1__* ops; int * name; } ;
struct TYPE_2__ {int trigger; int set_params; int free; int open; } ;


 int EINVAL ;
 int device_mutex ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_compress_add_device (struct snd_compr*) ;

int snd_compress_register(struct snd_compr *device)
{
 int retval;

 if (device->name == ((void*)0) || device->ops == ((void*)0))
  return -EINVAL;

 pr_debug("Registering compressed device %s\n", device->name);
 if (snd_BUG_ON(!device->ops->open))
  return -EINVAL;
 if (snd_BUG_ON(!device->ops->free))
  return -EINVAL;
 if (snd_BUG_ON(!device->ops->set_params))
  return -EINVAL;
 if (snd_BUG_ON(!device->ops->trigger))
  return -EINVAL;

 mutex_init(&device->lock);


 mutex_lock(&device_mutex);
 retval = snd_compress_add_device(device);
 mutex_unlock(&device_mutex);
 return retval;
}
