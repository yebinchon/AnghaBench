
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_pktinfo {TYPE_1__* skb; } ;
struct nft_fib {int flags; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {int daddr; int saddr; } ;
struct flowi6 {int flowlabel; int flowi6_mark; int saddr; int flowi6_oif; int daddr; } ;
typedef int __be32 ;
struct TYPE_2__ {int mark; struct net_device const* dev; } ;


 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_UNICAST ;
 int IPV6_FLOWINFO_MASK ;
 int NFTA_FIB_F_DADDR ;
 int NFTA_FIB_F_MARK ;
 int RT6_LOOKUP_F_HAS_SADDR ;
 int RT6_LOOKUP_F_IFACE ;
 int get_ifindex (struct net_device const*) ;
 int ipv6_addr_type (int *) ;

__attribute__((used)) static int nft_fib6_flowi_init(struct flowi6 *fl6, const struct nft_fib *priv,
          const struct nft_pktinfo *pkt,
          const struct net_device *dev,
          struct ipv6hdr *iph)
{
 int lookup_flags = 0;

 if (priv->flags & NFTA_FIB_F_DADDR) {
  fl6->daddr = iph->daddr;
  fl6->saddr = iph->saddr;
 } else {
  fl6->daddr = iph->saddr;
  fl6->saddr = iph->daddr;
 }

 if (ipv6_addr_type(&fl6->daddr) & IPV6_ADDR_LINKLOCAL) {
  lookup_flags |= RT6_LOOKUP_F_IFACE;
  fl6->flowi6_oif = get_ifindex(dev ? dev : pkt->skb->dev);
 }

 if (ipv6_addr_type(&fl6->saddr) & IPV6_ADDR_UNICAST)
  lookup_flags |= RT6_LOOKUP_F_HAS_SADDR;

 if (priv->flags & NFTA_FIB_F_MARK)
  fl6->flowi6_mark = pkt->skb->mark;

 fl6->flowlabel = (*(__be32 *)iph) & IPV6_FLOWINFO_MASK;

 return lookup_flags;
}
