
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;


 int IFF_UP ;
 scalar_t__ netif_carrier_ok (struct net_device const*) ;

bool mpls_output_possible(const struct net_device *dev)
{
 return dev && (dev->flags & IFF_UP) && netif_carrier_ok(dev);
}
