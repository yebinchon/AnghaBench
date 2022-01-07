
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ addr_assign_type; int dev_addr; } ;


 int NETDEV_CHANGEADDR ;
 scalar_t__ NET_ADDR_STOLEN ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int ether_addr_copy (int ,int ) ;

bool vlan_dev_inherit_address(struct net_device *dev,
         struct net_device *real_dev)
{
 if (dev->addr_assign_type != NET_ADDR_STOLEN)
  return 0;

 ether_addr_copy(dev->dev_addr, real_dev->dev_addr);
 call_netdevice_notifiers(NETDEV_CHANGEADDR, dev);
 return 1;
}
