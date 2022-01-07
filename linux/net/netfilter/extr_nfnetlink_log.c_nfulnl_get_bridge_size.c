
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ network_header; scalar_t__ mac_header; } ;


 scalar_t__ nla_total_size (int) ;
 int skb_mac_header_was_set (struct sk_buff const*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff const*) ;

__attribute__((used)) static u32 nfulnl_get_bridge_size(const struct sk_buff *skb)
{
 u32 size = 0;

 if (!skb_mac_header_was_set(skb))
  return 0;

 if (skb_vlan_tag_present(skb)) {
  size += nla_total_size(0);
  size += nla_total_size(sizeof(u16));
  size += nla_total_size(sizeof(u16));
 }

 if (skb->network_header > skb->mac_header)
  size += nla_total_size(skb->network_header - skb->mac_header);

 return size;
}
