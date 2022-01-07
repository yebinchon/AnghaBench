
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 scalar_t__ netif_carrier_ok (struct net_device*) ;

u32 ethtool_op_get_link(struct net_device *dev)
{
 return netif_carrier_ok(dev) ? 1 : 0;
}
