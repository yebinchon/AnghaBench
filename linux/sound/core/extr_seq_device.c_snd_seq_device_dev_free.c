
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_device {int dev; } ;
struct snd_device {struct snd_seq_device* device_data; } ;


 int cancel_autoload_drivers () ;
 int put_device (int *) ;

__attribute__((used)) static int snd_seq_device_dev_free(struct snd_device *device)
{
 struct snd_seq_device *dev = device->device_data;

 cancel_autoload_drivers();
 put_device(&dev->dev);
 return 0;
}
