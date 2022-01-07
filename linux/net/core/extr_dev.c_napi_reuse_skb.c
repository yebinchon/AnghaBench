
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int truesize; scalar_t__ encapsulation; int pkt_type; scalar_t__ skb_iif; int dev; int pfmemalloc; } ;
struct napi_struct {struct sk_buff* skb; int dev; } ;
struct TYPE_2__ {scalar_t__ gso_type; } ;


 scalar_t__ NET_IP_ALIGN ;
 scalar_t__ NET_SKB_PAD ;
 int PACKET_HOST ;
 int SKB_TRUESIZE (int ) ;
 int __skb_pull (struct sk_buff*,int ) ;
 int __vlan_hwaccel_clear_tag (struct sk_buff*) ;
 int consume_skb (struct sk_buff*) ;
 int skb_end_offset (struct sk_buff*) ;
 int skb_ext_reset (struct sk_buff*) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void napi_reuse_skb(struct napi_struct *napi, struct sk_buff *skb)
{
 if (unlikely(skb->pfmemalloc)) {
  consume_skb(skb);
  return;
 }
 __skb_pull(skb, skb_headlen(skb));

 skb_reserve(skb, NET_SKB_PAD + NET_IP_ALIGN - skb_headroom(skb));
 __vlan_hwaccel_clear_tag(skb);
 skb->dev = napi->dev;
 skb->skb_iif = 0;


 skb->pkt_type = PACKET_HOST;

 skb->encapsulation = 0;
 skb_shinfo(skb)->gso_type = 0;
 skb->truesize = SKB_TRUESIZE(skb_end_offset(skb));
 skb_ext_reset(skb);

 napi->skb = skb;
}
