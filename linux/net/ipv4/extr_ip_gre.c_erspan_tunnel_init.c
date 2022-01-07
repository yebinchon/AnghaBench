
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int priv_flags; int hw_features; int features; } ;
struct TYPE_3__ {int protocol; } ;
struct TYPE_4__ {TYPE_1__ iph; } ;
struct ip_tunnel {int tun_hlen; int erspan_ver; scalar_t__ encap_hlen; scalar_t__ hlen; TYPE_2__ parms; } ;


 int GRE_FEATURES ;
 int IFF_LIVE_ADDR_CHANGE ;
 int IPPROTO_GRE ;
 scalar_t__ erspan_hdr_len (int ) ;
 int ip_tunnel_init (struct net_device*) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int netif_keep_dst (struct net_device*) ;

__attribute__((used)) static int erspan_tunnel_init(struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);

 tunnel->tun_hlen = 8;
 tunnel->parms.iph.protocol = IPPROTO_GRE;
 tunnel->hlen = tunnel->tun_hlen + tunnel->encap_hlen +
         erspan_hdr_len(tunnel->erspan_ver);

 dev->features |= GRE_FEATURES;
 dev->hw_features |= GRE_FEATURES;
 dev->priv_flags |= IFF_LIVE_ADDR_CHANGE;
 netif_keep_dst(dev);

 return ip_tunnel_init(dev);
}
