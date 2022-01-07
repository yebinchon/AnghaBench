
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sst_device {int name; TYPE_2__* dev; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int owner; } ;


 int EEXIST ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ WARN_ON (int) ;
 int dev_dbg (TYPE_2__*,char*,int ) ;
 int dev_err (TYPE_2__*,char*,int ) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sst_device* sst ;
 int sst_lock ;
 int try_module_get (int ) ;

int sst_register_dsp(struct sst_device *dev)
{
 if (WARN_ON(!dev))
  return -EINVAL;
 if (!try_module_get(dev->dev->driver->owner))
  return -ENODEV;
 mutex_lock(&sst_lock);
 if (sst) {
  dev_err(dev->dev, "we already have a device %s\n", sst->name);
  module_put(dev->dev->driver->owner);
  mutex_unlock(&sst_lock);
  return -EEXIST;
 }
 dev_dbg(dev->dev, "registering device %s\n", dev->name);
 sst = dev;
 mutex_unlock(&sst_lock);
 return 0;
}
