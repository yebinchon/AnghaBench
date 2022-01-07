
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge_port {int dummy; } ;


 struct net_bridge_port* br_port_get_rcu (struct net_device const*) ;
 scalar_t__ br_rx_handler_check_rcu (struct net_device const*) ;

__attribute__((used)) static inline struct net_bridge_port *br_port_get_check_rcu(const struct net_device *dev)
{
 return br_rx_handler_check_rcu(dev) ? br_port_get_rcu(dev) : ((void*)0);
}
