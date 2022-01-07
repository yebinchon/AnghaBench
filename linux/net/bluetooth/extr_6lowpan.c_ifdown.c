
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int dev_close (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void ifdown(struct net_device *netdev)
{
 rtnl_lock();
 dev_close(netdev);
 rtnl_unlock();
}
