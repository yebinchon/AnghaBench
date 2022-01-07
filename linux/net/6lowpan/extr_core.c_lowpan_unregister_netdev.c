
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int lowpan_unregister_netdevice (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void lowpan_unregister_netdev(struct net_device *dev)
{
 rtnl_lock();
 lowpan_unregister_netdevice(dev);
 rtnl_unlock();
}
