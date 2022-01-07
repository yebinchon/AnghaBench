
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u16 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int len; unsigned int* data; int priority; int dev; scalar_t__ head_frag; } ;
struct ethhdr {int h_proto; int h_source; int h_dest; } ;
typedef int eth ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 unsigned int ALIGN (unsigned int const,int) ;
 int ETH_ALEN ;
 unsigned int ETH_P_AARP ;
 unsigned int ETH_P_IPX ;
 struct sk_buff* __ieee80211_amsdu_copy (struct sk_buff*,unsigned int,int,int,int) ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int bridge_tunnel_header ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ ether_addr_equal (unsigned int const*,int ) ;
 int htons (unsigned int) ;
 int is_multicast_ether_addr (int ) ;
 scalar_t__ likely (int) ;
 int memcpy (int ,struct ethhdr*,int) ;
 int ntohs (int ) ;
 int rfc1042_header ;
 int skb_copy_bits (struct sk_buff*,int,struct ethhdr*,int) ;
 int skb_has_frag_list (struct sk_buff*) ;
 int skb_is_nonlinear (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

void ieee80211_amsdu_to_8023s(struct sk_buff *skb, struct sk_buff_head *list,
         const u8 *addr, enum nl80211_iftype iftype,
         const unsigned int extra_headroom,
         const u8 *check_da, const u8 *check_sa)
{
 unsigned int hlen = ALIGN(extra_headroom, 4);
 struct sk_buff *frame = ((void*)0);
 u16 ethertype;
 u8 *payload;
 int offset = 0, remaining;
 struct ethhdr eth;
 bool reuse_frag = skb->head_frag && !skb_has_frag_list(skb);
 bool reuse_skb = 0;
 bool last = 0;

 while (!last) {
  unsigned int subframe_len;
  int len;
  u8 padding;

  skb_copy_bits(skb, offset, &eth, sizeof(eth));
  len = ntohs(eth.h_proto);
  subframe_len = sizeof(struct ethhdr) + len;
  padding = (4 - subframe_len) & 0x3;


  remaining = skb->len - offset;
  if (subframe_len > remaining)
   goto purge;

  offset += sizeof(struct ethhdr);
  last = remaining <= subframe_len + padding;


  if ((check_da && !is_multicast_ether_addr(eth.h_dest) &&
       !ether_addr_equal(check_da, eth.h_dest)) ||
      (check_sa && !ether_addr_equal(check_sa, eth.h_source))) {
   offset += len + padding;
   continue;
  }


  if (!skb_is_nonlinear(skb) && !reuse_frag && last) {
   skb_pull(skb, offset);
   frame = skb;
   reuse_skb = 1;
  } else {
   frame = __ieee80211_amsdu_copy(skb, hlen, offset, len,
             reuse_frag);
   if (!frame)
    goto purge;

   offset += len + padding;
  }

  skb_reset_network_header(frame);
  frame->dev = skb->dev;
  frame->priority = skb->priority;

  payload = frame->data;
  ethertype = (payload[6] << 8) | payload[7];
  if (likely((ether_addr_equal(payload, rfc1042_header) &&
       ethertype != ETH_P_AARP && ethertype != ETH_P_IPX) ||
      ether_addr_equal(payload, bridge_tunnel_header))) {
   eth.h_proto = htons(ethertype);
   skb_pull(frame, ETH_ALEN + 2);
  }

  memcpy(skb_push(frame, sizeof(eth)), &eth, sizeof(eth));
  __skb_queue_tail(list, frame);
 }

 if (!reuse_skb)
  dev_kfree_skb(skb);

 return;

 purge:
 __skb_queue_purge(list);
 dev_kfree_skb(skb);
}
