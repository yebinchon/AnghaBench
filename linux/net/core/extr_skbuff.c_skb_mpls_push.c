
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; TYPE_1__* dev; int inner_protocol; scalar_t__ encapsulation; } ;
struct mpls_shim_hdr {int label_stack_entry; } ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EINVAL ;
 scalar_t__ MPLS_HLEN ;
 int eth_hdr (struct sk_buff*) ;
 int eth_p_mpls (int ) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 struct mpls_shim_hdr* mpls_hdr (struct sk_buff*) ;
 int skb_cow_head (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 int skb_mod_eth_type (struct sk_buff*,int ,int ) ;
 int skb_postpush_rcsum (struct sk_buff*,struct mpls_shim_hdr*,scalar_t__) ;
 int skb_push (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_set_inner_network_header (struct sk_buff*,int) ;
 int skb_set_inner_protocol (struct sk_buff*,int ) ;
 int skb_set_network_header (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

int skb_mpls_push(struct sk_buff *skb, __be32 mpls_lse, __be16 mpls_proto,
    int mac_len)
{
 struct mpls_shim_hdr *lse;
 int err;

 if (unlikely(!eth_p_mpls(mpls_proto)))
  return -EINVAL;


 if (skb->encapsulation)
  return -EINVAL;

 err = skb_cow_head(skb, MPLS_HLEN);
 if (unlikely(err))
  return err;

 if (!skb->inner_protocol) {
  skb_set_inner_network_header(skb, mac_len);
  skb_set_inner_protocol(skb, skb->protocol);
 }

 skb_push(skb, MPLS_HLEN);
 memmove(skb_mac_header(skb) - MPLS_HLEN, skb_mac_header(skb),
  mac_len);
 skb_reset_mac_header(skb);
 skb_set_network_header(skb, mac_len);

 lse = mpls_hdr(skb);
 lse->label_stack_entry = mpls_lse;
 skb_postpush_rcsum(skb, lse, MPLS_HLEN);

 if (skb->dev && skb->dev->type == ARPHRD_ETHER)
  skb_mod_eth_type(skb, eth_hdr(skb), mpls_proto);
 skb->protocol = mpls_proto;

 return 0;
}
