
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_handler_data; } ;
struct net_bridge_port {int dummy; } ;


 scalar_t__ netif_is_bridge_port (struct net_device const*) ;
 struct net_bridge_port* rcu_dereference_rtnl (int ) ;

__attribute__((used)) static inline struct net_bridge_port *br_port_get_rtnl_rcu(const struct net_device *dev)
{
 return netif_is_bridge_port(dev) ?
  rcu_dereference_rtnl(dev->rx_handler_data) : ((void*)0);
}
