
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct net_device {int * dsa_ptr; TYPE_1__ dev; } ;


 int dsa_group ;
 int dsa_master_ethtool_teardown (struct net_device*) ;
 int dsa_master_ndo_teardown (struct net_device*) ;
 int dsa_master_reset_mtu (struct net_device*) ;
 int sysfs_remove_group (int *,int *) ;
 int wmb () ;

void dsa_master_teardown(struct net_device *dev)
{
 sysfs_remove_group(&dev->dev.kobj, &dsa_group);
 dsa_master_ndo_teardown(dev);
 dsa_master_ethtool_teardown(dev);
 dsa_master_reset_mtu(dev);

 dev->dsa_ptr = ((void*)0);





 wmb();
}
