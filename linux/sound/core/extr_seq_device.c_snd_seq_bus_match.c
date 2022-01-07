
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_driver {scalar_t__ argsize; int id; } ;
struct snd_seq_device {scalar_t__ argsize; int id; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ strcmp (int ,int ) ;
 struct snd_seq_device* to_seq_dev (struct device*) ;
 struct snd_seq_driver* to_seq_drv (struct device_driver*) ;

__attribute__((used)) static int snd_seq_bus_match(struct device *dev, struct device_driver *drv)
{
 struct snd_seq_device *sdev = to_seq_dev(dev);
 struct snd_seq_driver *sdrv = to_seq_drv(drv);

 return strcmp(sdrv->id, sdev->id) == 0 &&
  sdrv->argsize == sdev->argsize;
}
