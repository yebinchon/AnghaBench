
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int features; int hw_features; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {int o_flags; } ;
struct ip6_tnl {TYPE_1__ encap; TYPE_2__ parms; } ;


 int GRE6_FEATURES ;
 int NETIF_F_GSO_SOFTWARE ;
 int NETIF_F_LLTX ;
 int TUNNEL_CSUM ;
 scalar_t__ TUNNEL_ENCAP_NONE ;
 int TUNNEL_SEQ ;
 struct ip6_tnl* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ip6gre_tnl_init_features(struct net_device *dev)
{
 struct ip6_tnl *nt = netdev_priv(dev);

 dev->features |= GRE6_FEATURES;
 dev->hw_features |= GRE6_FEATURES;

 if (!(nt->parms.o_flags & TUNNEL_SEQ)) {




  if (!(nt->parms.o_flags & TUNNEL_CSUM) ||
      nt->encap.type == TUNNEL_ENCAP_NONE) {
   dev->features |= NETIF_F_GSO_SOFTWARE;
   dev->hw_features |= NETIF_F_GSO_SOFTWARE;
  }




  dev->features |= NETIF_F_LLTX;
 }
}
