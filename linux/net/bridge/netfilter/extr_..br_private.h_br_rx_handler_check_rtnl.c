
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_handler; } ;


 scalar_t__ br_handle_frame ;
 scalar_t__ rcu_dereference_rtnl (int ) ;

__attribute__((used)) static inline bool br_rx_handler_check_rtnl(const struct net_device *dev)
{
 return rcu_dereference_rtnl(dev->rx_handler) == br_handle_frame;
}
