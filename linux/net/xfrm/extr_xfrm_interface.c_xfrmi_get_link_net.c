
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_if {struct net* net; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 struct xfrm_if* netdev_priv (struct net_device const*) ;

__attribute__((used)) static struct net *xfrmi_get_link_net(const struct net_device *dev)
{
 struct xfrm_if *xi = netdev_priv(dev);

 return xi->net;
}
