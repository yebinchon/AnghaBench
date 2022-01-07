
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINTR ;
 int register_netdevice (struct net_device*) ;
 scalar_t__ rtnl_lock_killable () ;
 int rtnl_unlock () ;

int register_netdev(struct net_device *dev)
{
 int err;

 if (rtnl_lock_killable())
  return -EINTR;
 err = register_netdevice(dev);
 rtnl_unlock();
 return err;
}
