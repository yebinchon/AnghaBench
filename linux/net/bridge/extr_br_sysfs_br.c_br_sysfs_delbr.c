
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {struct kobject kobj; } ;
struct net_device {TYPE_1__ dev; } ;
struct net_bridge {int ifobj; } ;


 int bridge_forward ;
 int bridge_group ;
 int kobject_put (int ) ;
 struct net_bridge* netdev_priv (struct net_device*) ;
 int sysfs_remove_bin_file (struct kobject*,int *) ;
 int sysfs_remove_group (struct kobject*,int *) ;

void br_sysfs_delbr(struct net_device *dev)
{
 struct kobject *kobj = &dev->dev.kobj;
 struct net_bridge *br = netdev_priv(dev);

 kobject_put(br->ifobj);
 sysfs_remove_bin_file(kobj, &bridge_forward);
 sysfs_remove_group(kobj, &bridge_group);
}
