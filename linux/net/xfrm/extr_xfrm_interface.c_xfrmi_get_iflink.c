
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link; } ;
struct xfrm_if {TYPE_1__ p; } ;
struct net_device {int dummy; } ;


 struct xfrm_if* netdev_priv (struct net_device const*) ;

__attribute__((used)) static int xfrmi_get_iflink(const struct net_device *dev)
{
 struct xfrm_if *xi = netdev_priv(dev);

 return xi->p.link;
}
