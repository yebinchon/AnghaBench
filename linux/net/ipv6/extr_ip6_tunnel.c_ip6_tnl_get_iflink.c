
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int link; } ;
struct ip6_tnl {TYPE_1__ parms; } ;


 struct ip6_tnl* netdev_priv (struct net_device const*) ;

int ip6_tnl_get_iflink(const struct net_device *dev)
{
 struct ip6_tnl *t = netdev_priv(dev);

 return t->parms.link;
}
