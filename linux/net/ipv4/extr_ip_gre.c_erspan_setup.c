
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; int * netdev_ops; scalar_t__ max_mtu; } ;
struct ip_tunnel {int erspan_ver; } ;


 int IFF_LIVE_ADDR_CHANGE ;
 int IFF_TX_SKB_SHARING ;
 int erspan_net_id ;
 int erspan_netdev_ops ;
 int ether_setup (struct net_device*) ;
 int ip_tunnel_setup (struct net_device*,int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static void erspan_setup(struct net_device *dev)
{
 struct ip_tunnel *t = netdev_priv(dev);

 ether_setup(dev);
 dev->max_mtu = 0;
 dev->netdev_ops = &erspan_netdev_ops;
 dev->priv_flags &= ~IFF_TX_SKB_SHARING;
 dev->priv_flags |= IFF_LIVE_ADDR_CHANGE;
 ip_tunnel_setup(dev, erspan_net_id);
 t->erspan_ver = 1;
}
