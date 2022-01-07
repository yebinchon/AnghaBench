
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_len; int hw_features; int features; int flags; int type; int * netdev_ops; } ;


 int ARPHRD_TUNNEL ;
 int IFF_NOARP ;
 int IPIP_FEATURES ;
 int NETIF_F_LLTX ;
 int ip_tunnel_setup (struct net_device*,int ) ;
 int ipip_net_id ;
 int ipip_netdev_ops ;
 int netif_keep_dst (struct net_device*) ;

__attribute__((used)) static void ipip_tunnel_setup(struct net_device *dev)
{
 dev->netdev_ops = &ipip_netdev_ops;

 dev->type = ARPHRD_TUNNEL;
 dev->flags = IFF_NOARP;
 dev->addr_len = 4;
 dev->features |= NETIF_F_LLTX;
 netif_keep_dst(dev);

 dev->features |= IPIP_FEATURES;
 dev->hw_features |= IPIP_FEATURES;
 ip_tunnel_setup(dev, ipip_net_id);
}
