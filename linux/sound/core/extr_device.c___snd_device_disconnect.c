
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_device {scalar_t__ state; TYPE_2__* card; TYPE_1__* ops; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ (* dev_disconnect ) (struct snd_device*) ;} ;


 scalar_t__ SNDRV_DEV_DISCONNECTED ;
 scalar_t__ SNDRV_DEV_REGISTERED ;
 int dev_err (int ,char*) ;
 scalar_t__ stub1 (struct snd_device*) ;

__attribute__((used)) static void __snd_device_disconnect(struct snd_device *dev)
{
 if (dev->state == SNDRV_DEV_REGISTERED) {
  if (dev->ops->dev_disconnect &&
      dev->ops->dev_disconnect(dev))
   dev_err(dev->card->dev, "device disconnect failure\n");
  dev->state = SNDRV_DEV_DISCONNECTED;
 }
}
