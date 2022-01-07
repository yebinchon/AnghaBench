
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_compr* device_data; } ;
struct snd_compr {int dev; } ;


 int snd_unregister_device (int *) ;

__attribute__((used)) static int snd_compress_dev_disconnect(struct snd_device *device)
{
 struct snd_compr *compr;

 compr = device->device_data;
 snd_unregister_device(&compr->dev);
 return 0;
}
