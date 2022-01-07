
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; int dev; } ;
struct dn_skb_cb {int hops; void* src; void* dst; } ;


 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int NET_RX_DROP ;
 int NFPROTO_DECNET ;
 int NF_DN_PRE_ROUTING ;
 int NF_HOOK (int ,int ,int *,int *,struct sk_buff*,int ,int *,int ) ;
 void* dn_eth2dn (unsigned char*) ;
 int dn_hiord_addr ;
 int dn_route_rx_packet ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ memcmp (unsigned char*,int ,int) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static int dn_route_rx_long(struct sk_buff *skb)
{
 struct dn_skb_cb *cb = DN_SKB_CB(skb);
 unsigned char *ptr = skb->data;

 if (!pskb_may_pull(skb, 21))
  goto drop_it;

 skb_pull(skb, 20);
 skb_reset_transport_header(skb);


 ptr += 2;
 cb->dst = dn_eth2dn(ptr);
 if (memcmp(ptr, dn_hiord_addr, 4) != 0)
  goto drop_it;
 ptr += 6;



 ptr += 2;
 cb->src = dn_eth2dn(ptr);
 if (memcmp(ptr, dn_hiord_addr, 4) != 0)
  goto drop_it;
 ptr += 6;

 ptr++;
 cb->hops = *ptr++;

 return NF_HOOK(NFPROTO_DECNET, NF_DN_PRE_ROUTING,
         &init_net, ((void*)0), skb, skb->dev, ((void*)0),
         dn_route_rx_packet);

drop_it:
 kfree_skb(skb);
 return NET_RX_DROP;
}
