
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ip_tunnel {unsigned int ip_tnl_net_id; } ;


 struct ip_tunnel* netdev_priv (struct net_device*) ;

void ip_tunnel_setup(struct net_device *dev, unsigned int net_id)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 tunnel->ip_tnl_net_id = net_id;
}
