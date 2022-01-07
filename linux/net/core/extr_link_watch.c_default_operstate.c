
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ ifindex; } ;


 unsigned char IF_OPER_DORMANT ;
 unsigned char IF_OPER_DOWN ;
 unsigned char IF_OPER_LOWERLAYERDOWN ;
 unsigned char IF_OPER_UP ;
 scalar_t__ dev_get_iflink (struct net_device const*) ;
 int netif_carrier_ok (struct net_device const*) ;
 scalar_t__ netif_dormant (struct net_device const*) ;

__attribute__((used)) static unsigned char default_operstate(const struct net_device *dev)
{
 if (!netif_carrier_ok(dev))
  return (dev->ifindex != dev_get_iflink(dev) ?
   IF_OPER_LOWERLAYERDOWN : IF_OPER_DOWN);

 if (netif_dormant(dev))
  return IF_OPER_DORMANT;

 return IF_OPER_UP;
}
