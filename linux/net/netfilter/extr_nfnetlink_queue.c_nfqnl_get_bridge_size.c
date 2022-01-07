
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ network_header; scalar_t__ mac_header; } ;
struct TYPE_2__ {scalar_t__ pf; } ;
struct nf_queue_entry {TYPE_1__ state; struct sk_buff* skb; } ;
typedef int __be16 ;


 scalar_t__ PF_BRIDGE ;
 int nla_total_size (int) ;
 int skb_mac_header_was_set (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;

__attribute__((used)) static u32 nfqnl_get_bridge_size(struct nf_queue_entry *entry)
{
 struct sk_buff *entskb = entry->skb;
 u32 nlalen = 0;

 if (entry->state.pf != PF_BRIDGE || !skb_mac_header_was_set(entskb))
  return 0;

 if (skb_vlan_tag_present(entskb))
  nlalen += nla_total_size(nla_total_size(sizeof(__be16)) +
      nla_total_size(sizeof(__be16)));

 if (entskb->network_header > entskb->mac_header)
  nlalen += nla_total_size((entskb->network_header -
       entskb->mac_header));

 return nlalen;
}
