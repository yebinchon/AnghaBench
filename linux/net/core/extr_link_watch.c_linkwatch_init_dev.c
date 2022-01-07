
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_dormant (struct net_device*) ;
 int rfc2863_policy (struct net_device*) ;

void linkwatch_init_dev(struct net_device *dev)
{

 if (!netif_carrier_ok(dev) || netif_dormant(dev))
  rfc2863_policy(dev);
}
