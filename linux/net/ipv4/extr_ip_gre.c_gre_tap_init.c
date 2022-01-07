
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; } ;


 int IFF_LIVE_ADDR_CHANGE ;
 int __gre_tunnel_init (struct net_device*) ;
 int ip_tunnel_init (struct net_device*) ;
 int netif_keep_dst (struct net_device*) ;

__attribute__((used)) static int gre_tap_init(struct net_device *dev)
{
 __gre_tunnel_init(dev);
 dev->priv_flags |= IFF_LIVE_ADDR_CHANGE;
 netif_keep_dst(dev);

 return ip_tunnel_init(dev);
}
