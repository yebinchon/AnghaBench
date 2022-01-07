
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;
struct snd_seq_device {TYPE_1__ dev; } ;
struct snd_device {struct snd_seq_device* device_data; } ;


 int device_add (TYPE_1__*) ;
 int queue_autoload_drivers () ;

__attribute__((used)) static int snd_seq_device_dev_register(struct snd_device *device)
{
 struct snd_seq_device *dev = device->device_data;
 int err;

 err = device_add(&dev->dev);
 if (err < 0)
  return err;
 if (!dev->dev.driver)
  queue_autoload_drivers();
 return 0;
}
