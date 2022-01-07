
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;


 int BT_INFO (char*,int ,int) ;
 int dev_open (struct net_device*,int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void ifup(struct net_device *netdev)
{
 int err;

 rtnl_lock();
 err = dev_open(netdev, ((void*)0));
 if (err < 0)
  BT_INFO("iface %s cannot be opened (%d)", netdev->name, err);
 rtnl_unlock();
}
