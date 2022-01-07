
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 scalar_t__ netif_oper_up (struct net_device const*) ;
 int qdisc_tx_is_noop (struct net_device const*) ;

__attribute__((used)) static inline bool addrconf_link_ready(const struct net_device *dev)
{
 return netif_oper_up(dev) && !qdisc_tx_is_noop(dev);
}
