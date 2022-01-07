
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_device {int dev; } ;
struct snd_device {struct snd_seq_device* device_data; } ;


 int device_del (int *) ;

__attribute__((used)) static int snd_seq_device_dev_disconnect(struct snd_device *device)
{
 struct snd_seq_device *dev = device->device_data;

 device_del(&dev->dev);
 return 0;
}
