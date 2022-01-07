
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int link; } ;
struct ip_tunnel {TYPE_1__ parms; } ;


 struct ip_tunnel* netdev_priv (struct net_device const*) ;

int ip_tunnel_get_iflink(const struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);

 return tunnel->parms.link;
}
