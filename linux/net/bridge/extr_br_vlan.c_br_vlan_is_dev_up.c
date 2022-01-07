
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;


 int IFF_UP ;
 scalar_t__ netif_oper_up (struct net_device const*) ;

__attribute__((used)) static bool br_vlan_is_dev_up(const struct net_device *dev)
{
 return !!(dev->flags & IFF_UP) && netif_oper_up(dev);
}
