
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct net_device {int rx_handler_data; } ;


 scalar_t__ likely (int ) ;
 int netif_is_ovs_port (struct net_device*) ;
 scalar_t__ rcu_dereference_rtnl (int ) ;

struct vport *ovs_netdev_get_vport(struct net_device *dev)
{
 if (likely(netif_is_ovs_port(dev)))
  return (struct vport *)
   rcu_dereference_rtnl(dev->rx_handler_data);
 else
  return ((void*)0);
}
