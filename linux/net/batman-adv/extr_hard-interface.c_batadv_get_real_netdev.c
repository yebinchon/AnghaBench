
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 struct net_device* batadv_get_real_netdevice (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

struct net_device *batadv_get_real_netdev(struct net_device *net_device)
{
 struct net_device *real_netdev;

 rtnl_lock();
 real_netdev = batadv_get_real_netdevice(net_device);
 rtnl_unlock();

 return real_netdev;
}
