
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int features; int hw_features; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_4__ {int protocol; } ;
struct TYPE_5__ {int o_flags; TYPE_1__ iph; } ;
struct ip_tunnel {TYPE_3__ encap; TYPE_2__ parms; scalar_t__ encap_hlen; scalar_t__ tun_hlen; scalar_t__ hlen; } ;


 int GRE_FEATURES ;
 int IPPROTO_GRE ;
 int NETIF_F_GSO_SOFTWARE ;
 int NETIF_F_LLTX ;
 int TUNNEL_CSUM ;
 scalar_t__ TUNNEL_ENCAP_NONE ;
 int TUNNEL_SEQ ;
 scalar_t__ gre_calc_hlen (int) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static void __gre_tunnel_init(struct net_device *dev)
{
 struct ip_tunnel *tunnel;

 tunnel = netdev_priv(dev);
 tunnel->tun_hlen = gre_calc_hlen(tunnel->parms.o_flags);
 tunnel->parms.iph.protocol = IPPROTO_GRE;

 tunnel->hlen = tunnel->tun_hlen + tunnel->encap_hlen;

 dev->features |= GRE_FEATURES;
 dev->hw_features |= GRE_FEATURES;

 if (!(tunnel->parms.o_flags & TUNNEL_SEQ)) {




  if (!(tunnel->parms.o_flags & TUNNEL_CSUM) ||
      (tunnel->encap.type == TUNNEL_ENCAP_NONE)) {
   dev->features |= NETIF_F_GSO_SOFTWARE;
   dev->hw_features |= NETIF_F_GSO_SOFTWARE;
  }




  dev->features |= NETIF_F_LLTX;
 }
}
