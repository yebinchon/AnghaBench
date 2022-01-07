
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct attribute_group const** groups; struct net_device* platform_data; int * class; } ;
struct net_device {scalar_t__ wireless_handlers; scalar_t__ ieee80211_ptr; int name; struct attribute_group** sysfs_groups; struct device dev; } ;
struct attribute_group {int dummy; } ;


 int dev_set_name (struct device*,char*,int ) ;
 int device_add (struct device*) ;
 int device_del (struct device*) ;
 int device_initialize (struct device*) ;
 int net_class ;
 int netstat_group ;
 int pm_runtime_set_memalloc_noio (struct device*,int) ;
 int register_queue_kobjects (struct net_device*) ;
 int wireless_group ;

int netdev_register_kobject(struct net_device *ndev)
{
 struct device *dev = &ndev->dev;
 const struct attribute_group **groups = ndev->sysfs_groups;
 int error = 0;

 device_initialize(dev);
 dev->class = &net_class;
 dev->platform_data = ndev;
 dev->groups = groups;

 dev_set_name(dev, "%s", ndev->name);
 error = device_add(dev);
 if (error)
  return error;

 error = register_queue_kobjects(ndev);
 if (error) {
  device_del(dev);
  return error;
 }

 pm_runtime_set_memalloc_noio(dev, 1);

 return error;
}
