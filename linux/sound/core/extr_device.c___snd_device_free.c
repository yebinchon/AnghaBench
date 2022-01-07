
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_device {TYPE_2__* card; TYPE_1__* ops; int list; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ (* dev_free ) (struct snd_device*) ;} ;


 int __snd_device_disconnect (struct snd_device*) ;
 int dev_err (int ,char*) ;
 int kfree (struct snd_device*) ;
 int list_del (int *) ;
 scalar_t__ stub1 (struct snd_device*) ;

__attribute__((used)) static void __snd_device_free(struct snd_device *dev)
{

 list_del(&dev->list);

 __snd_device_disconnect(dev);
 if (dev->ops->dev_free) {
  if (dev->ops->dev_free(dev))
   dev_err(dev->card->dev, "device free failure\n");
 }
 kfree(dev);
}
