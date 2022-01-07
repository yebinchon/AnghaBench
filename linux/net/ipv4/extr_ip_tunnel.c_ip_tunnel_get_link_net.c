
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip_tunnel {struct net* net; } ;


 struct ip_tunnel* netdev_priv (struct net_device const*) ;

struct net *ip_tunnel_get_link_net(const struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);

 return tunnel->net;
}
