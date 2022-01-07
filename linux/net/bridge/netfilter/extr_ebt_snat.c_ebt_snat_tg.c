
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_action_param {struct ebt_nat_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct ebt_nat_info {int target; int mac; } ;
struct arphdr {int ar_hln; } ;
typedef int _ah ;
struct TYPE_2__ {scalar_t__ h_proto; int h_source; } ;


 unsigned int EBT_DROP ;
 unsigned int EBT_VERDICT_BITS ;
 int ETH_ALEN ;
 int ETH_P_ARP ;
 int NAT_ARP_BIT ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ htons (int ) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,int) ;
 struct arphdr* skb_header_pointer (struct sk_buff*,int ,int,struct arphdr*) ;
 scalar_t__ skb_store_bits (struct sk_buff*,int,int ,int) ;

__attribute__((used)) static unsigned int
ebt_snat_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct ebt_nat_info *info = par->targinfo;

 if (skb_ensure_writable(skb, ETH_ALEN * 2))
  return EBT_DROP;

 ether_addr_copy(eth_hdr(skb)->h_source, info->mac);
 if (!(info->target & NAT_ARP_BIT) &&
     eth_hdr(skb)->h_proto == htons(ETH_P_ARP)) {
  const struct arphdr *ap;
  struct arphdr _ah;

  ap = skb_header_pointer(skb, 0, sizeof(_ah), &_ah);
  if (ap == ((void*)0))
   return EBT_DROP;
  if (ap->ar_hln != ETH_ALEN)
   goto out;
  if (skb_store_bits(skb, sizeof(_ah), info->mac, ETH_ALEN))
   return EBT_DROP;
 }
out:
 return info->target | ~EBT_VERDICT_BITS;
}
