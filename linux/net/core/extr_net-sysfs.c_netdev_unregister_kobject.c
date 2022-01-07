
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int kobj; } ;
struct net_device {struct device dev; } ;
struct TYPE_2__ {int count; } ;


 TYPE_1__* dev_net (struct net_device*) ;
 int dev_set_uevent_suppress (struct device*,int) ;
 int device_del (struct device*) ;
 int kobject_get (int *) ;
 int pm_runtime_set_memalloc_noio (struct device*,int) ;
 int refcount_read (int *) ;
 int remove_queue_kobjects (struct net_device*) ;

void netdev_unregister_kobject(struct net_device *ndev)
{
 struct device *dev = &ndev->dev;

 if (!refcount_read(&dev_net(ndev)->count))
  dev_set_uevent_suppress(dev, 1);

 kobject_get(&dev->kobj);

 remove_queue_kobjects(ndev);

 pm_runtime_set_memalloc_noio(dev, 0);

 device_del(dev);
}
