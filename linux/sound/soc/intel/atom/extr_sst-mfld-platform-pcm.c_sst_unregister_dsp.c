
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sst_device {int name; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int owner; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ WARN_ON (int) ;
 int dev_dbg (TYPE_2__*,char*,int ) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sst_device* sst ;
 int sst_lock ;

int sst_unregister_dsp(struct sst_device *dev)
{
 if (WARN_ON(!dev))
  return -EINVAL;
 if (dev != sst)
  return -EINVAL;

 mutex_lock(&sst_lock);

 if (!sst) {
  mutex_unlock(&sst_lock);
  return -EIO;
 }

 module_put(sst->dev->driver->owner);
 dev_dbg(dev->dev, "unreg %s\n", sst->name);
 sst = ((void*)0);
 mutex_unlock(&sst_lock);
 return 0;
}
