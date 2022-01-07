
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int lowpan_dev_debugfs_exit (struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;

void lowpan_unregister_netdevice(struct net_device *dev)
{
 unregister_netdevice(dev);
 lowpan_dev_debugfs_exit(dev);
}
