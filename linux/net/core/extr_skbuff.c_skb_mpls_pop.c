
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; TYPE_1__* dev; } ;
struct ethhdr {int dummy; } ;
typedef int __be16 ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ ARPHRD_ETHER ;
 void* ETH_HLEN ;
 scalar_t__ MPLS_HLEN ;
 int __skb_pull (struct sk_buff*,scalar_t__) ;
 int eth_p_mpls (int ) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 scalar_t__ mpls_hdr (struct sk_buff*) ;
 int skb_ensure_writable (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 int skb_mod_eth_type (struct sk_buff*,struct ethhdr*,int ) ;
 int skb_postpull_rcsum (struct sk_buff*,scalar_t__,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

int skb_mpls_pop(struct sk_buff *skb, __be16 next_proto, int mac_len)
{
 int err;

 if (unlikely(!eth_p_mpls(skb->protocol)))
  return 0;

 err = skb_ensure_writable(skb, mac_len + MPLS_HLEN);
 if (unlikely(err))
  return err;

 skb_postpull_rcsum(skb, mpls_hdr(skb), MPLS_HLEN);
 memmove(skb_mac_header(skb) + MPLS_HLEN, skb_mac_header(skb),
  mac_len);

 __skb_pull(skb, MPLS_HLEN);
 skb_reset_mac_header(skb);
 skb_set_network_header(skb, mac_len);

 if (skb->dev && skb->dev->type == ARPHRD_ETHER) {
  struct ethhdr *hdr;


  hdr = (struct ethhdr *)((void *)mpls_hdr(skb) - ETH_HLEN);
  skb_mod_eth_type(skb, hdr, next_proto);
 }
 skb->protocol = next_proto;

 return 0;
}
