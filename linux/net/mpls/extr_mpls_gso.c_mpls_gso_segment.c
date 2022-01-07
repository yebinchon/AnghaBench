
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int protocol; scalar_t__ mac_len; struct sk_buff* next; TYPE_1__* dev; int inner_protocol; scalar_t__ mac_header; } ;
typedef int netdev_features_t ;
typedef int __be16 ;
struct TYPE_2__ {int mpls_features; } ;


 int EINVAL ;
 struct sk_buff* ERR_PTR (int ) ;
 scalar_t__ IS_ERR_OR_NULL (struct sk_buff*) ;
 int __skb_pull (struct sk_buff*,unsigned int) ;
 int __skb_push (struct sk_buff*,unsigned int) ;
 int pskb_may_pull (struct sk_buff*,unsigned int) ;
 int skb_gso_error_unwind (struct sk_buff*,int ,unsigned int,scalar_t__,scalar_t__) ;
 unsigned int skb_inner_network_header (struct sk_buff*) ;
 struct sk_buff* skb_mac_gso_segment (struct sk_buff*,int) ;
 unsigned int skb_network_header (struct sk_buff*) ;
 int skb_reset_inner_network_header (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *mpls_gso_segment(struct sk_buff *skb,
           netdev_features_t features)
{
 struct sk_buff *segs = ERR_PTR(-EINVAL);
 u16 mac_offset = skb->mac_header;
 netdev_features_t mpls_features;
 u16 mac_len = skb->mac_len;
 __be16 mpls_protocol;
 unsigned int mpls_hlen;

 skb_reset_network_header(skb);
 mpls_hlen = skb_inner_network_header(skb) - skb_network_header(skb);
 if (unlikely(!pskb_may_pull(skb, mpls_hlen)))
  goto out;


 mpls_protocol = skb->protocol;
 skb->protocol = skb->inner_protocol;

 __skb_pull(skb, mpls_hlen);

 skb->mac_len = 0;
 skb_reset_mac_header(skb);


 mpls_features = skb->dev->mpls_features & features;
 segs = skb_mac_gso_segment(skb, mpls_features);
 if (IS_ERR_OR_NULL(segs)) {
  skb_gso_error_unwind(skb, mpls_protocol, mpls_hlen, mac_offset,
         mac_len);
  goto out;
 }
 skb = segs;

 mpls_hlen += mac_len;
 do {
  skb->mac_len = mac_len;
  skb->protocol = mpls_protocol;

  skb_reset_inner_network_header(skb);

  __skb_push(skb, mpls_hlen);

  skb_reset_mac_header(skb);
  skb_set_network_header(skb, mac_len);
 } while ((skb = skb->next));

out:
 return segs;
}
