
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_offload {int flags; } ;
struct sk_buff {int dev; int len; scalar_t__ data; } ;
struct iphdr {int protocol; int tot_len; } ;
struct TYPE_2__ {int protocol; } ;


 int NFPROTO_IPV4 ;
 int NF_HOOK (int ,int ,int ,int *,struct sk_buff*,int ,int *,int ) ;
 int NF_INET_PRE_ROUTING ;
 int XFRM_GRO ;
 TYPE_1__* XFRM_MODE_SKB_CB (struct sk_buff*) ;
 int __skb_push (struct sk_buff*,scalar_t__) ;
 int dev_net (int ) ;
 int htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_send_check (struct iphdr*) ;
 int skb_mac_header_rebuild (struct sk_buff*) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int xfrm4_rcv_encap_finish ;
 struct xfrm_offload* xfrm_offload (struct sk_buff*) ;

int xfrm4_transport_finish(struct sk_buff *skb, int async)
{
 struct xfrm_offload *xo = xfrm_offload(skb);
 struct iphdr *iph = ip_hdr(skb);

 iph->protocol = XFRM_MODE_SKB_CB(skb)->protocol;


 if (!async)
  return -iph->protocol;


 __skb_push(skb, skb->data - skb_network_header(skb));
 iph->tot_len = htons(skb->len);
 ip_send_check(iph);

 if (xo && (xo->flags & XFRM_GRO)) {
  skb_mac_header_rebuild(skb);
  skb_reset_transport_header(skb);
  return 0;
 }

 NF_HOOK(NFPROTO_IPV4, NF_INET_PRE_ROUTING,
  dev_net(skb->dev), ((void*)0), skb, skb->dev, ((void*)0),
  xfrm4_rcv_encap_finish);
 return 0;
}
