
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr {int name; } ;


 int device_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ) ;
 int snd_compress_remove_device (struct snd_compr*) ;

int snd_compress_deregister(struct snd_compr *device)
{
 pr_debug("Removing compressed device %s\n", device->name);
 mutex_lock(&device_mutex);
 snd_compress_remove_device(device);
 mutex_unlock(&device_mutex);
 return 0;
}
