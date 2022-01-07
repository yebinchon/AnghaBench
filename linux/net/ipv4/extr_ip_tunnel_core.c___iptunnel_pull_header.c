
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct ethhdr {scalar_t__ h_proto; } ;
typedef scalar_t__ __be16 ;


 int ENOMEM ;
 int ETH_HLEN ;
 int ETH_P_802_2 ;
 int ETH_P_TEB ;
 int __vlan_hwaccel_clear_tag (struct sk_buff*) ;
 int eth_proto_is_802_3 (scalar_t__) ;
 scalar_t__ htons (int ) ;
 int iptunnel_pull_offloads (struct sk_buff*) ;
 scalar_t__ likely (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_clear_hash_if_not_l4 (struct sk_buff*) ;
 int skb_pull_rcsum (struct sk_buff*,int) ;
 int skb_scrub_packet (struct sk_buff*,int) ;
 int skb_set_queue_mapping (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

int __iptunnel_pull_header(struct sk_buff *skb, int hdr_len,
      __be16 inner_proto, bool raw_proto, bool xnet)
{
 if (unlikely(!pskb_may_pull(skb, hdr_len)))
  return -ENOMEM;

 skb_pull_rcsum(skb, hdr_len);

 if (!raw_proto && inner_proto == htons(ETH_P_TEB)) {
  struct ethhdr *eh;

  if (unlikely(!pskb_may_pull(skb, ETH_HLEN)))
   return -ENOMEM;

  eh = (struct ethhdr *)skb->data;
  if (likely(eth_proto_is_802_3(eh->h_proto)))
   skb->protocol = eh->h_proto;
  else
   skb->protocol = htons(ETH_P_802_2);

 } else {
  skb->protocol = inner_proto;
 }

 skb_clear_hash_if_not_l4(skb);
 __vlan_hwaccel_clear_tag(skb);
 skb_set_queue_mapping(skb, 0);
 skb_scrub_packet(skb, xnet);

 return iptunnel_pull_offloads(skb);
}
