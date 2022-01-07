
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; int dev; } ;
struct dn_skb_cb {unsigned char hops; void* src; void* dst; } ;
typedef void* __le16 ;


 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int NET_RX_DROP ;
 int NFPROTO_DECNET ;
 int NF_DN_PRE_ROUTING ;
 int NF_HOOK (int ,int ,int *,int *,struct sk_buff*,int ,int *,int ) ;
 int dn_route_rx_packet ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static int dn_route_rx_short(struct sk_buff *skb)
{
 struct dn_skb_cb *cb = DN_SKB_CB(skb);
 unsigned char *ptr = skb->data;

 if (!pskb_may_pull(skb, 6))
  goto drop_it;

 skb_pull(skb, 5);
 skb_reset_transport_header(skb);

 cb->dst = *(__le16 *)ptr;
 ptr += 2;
 cb->src = *(__le16 *)ptr;
 ptr += 2;
 cb->hops = *ptr & 0x3f;

 return NF_HOOK(NFPROTO_DECNET, NF_DN_PRE_ROUTING,
         &init_net, ((void*)0), skb, skb->dev, ((void*)0),
         dn_route_rx_packet);

drop_it:
 kfree_skb(skb);
 return NET_RX_DROP;
}
