
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; scalar_t__ encapsulation; } ;
struct net_device {int tx_dropped; } ;
typedef int netdev_features_t ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 scalar_t__ __skb_linearize (struct sk_buff*) ;
 int atomic_long_inc (int *) ;
 int consume_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ netif_needs_gso (struct sk_buff*,int ) ;
 int netif_skb_features (struct sk_buff*) ;
 struct sk_buff* sk_validate_xmit_skb (struct sk_buff*,struct net_device*) ;
 int skb_checksum_start_offset (struct sk_buff*) ;
 scalar_t__ skb_csum_hwoffload_help (struct sk_buff*,int ) ;
 struct sk_buff* skb_gso_segment (struct sk_buff*,int ) ;
 scalar_t__ skb_needs_linearize (struct sk_buff*,int ) ;
 int skb_set_inner_transport_header (struct sk_buff*,int ) ;
 int skb_set_transport_header (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;
 struct sk_buff* validate_xmit_vlan (struct sk_buff*,int ) ;
 struct sk_buff* validate_xmit_xfrm (struct sk_buff*,int ,int*) ;

__attribute__((used)) static struct sk_buff *validate_xmit_skb(struct sk_buff *skb, struct net_device *dev, bool *again)
{
 netdev_features_t features;

 features = netif_skb_features(skb);
 skb = validate_xmit_vlan(skb, features);
 if (unlikely(!skb))
  goto out_null;

 skb = sk_validate_xmit_skb(skb, dev);
 if (unlikely(!skb))
  goto out_null;

 if (netif_needs_gso(skb, features)) {
  struct sk_buff *segs;

  segs = skb_gso_segment(skb, features);
  if (IS_ERR(segs)) {
   goto out_kfree_skb;
  } else if (segs) {
   consume_skb(skb);
   skb = segs;
  }
 } else {
  if (skb_needs_linearize(skb, features) &&
      __skb_linearize(skb))
   goto out_kfree_skb;





  if (skb->ip_summed == CHECKSUM_PARTIAL) {
   if (skb->encapsulation)
    skb_set_inner_transport_header(skb,
              skb_checksum_start_offset(skb));
   else
    skb_set_transport_header(skb,
        skb_checksum_start_offset(skb));
   if (skb_csum_hwoffload_help(skb, features))
    goto out_kfree_skb;
  }
 }

 skb = validate_xmit_xfrm(skb, features, again);

 return skb;

out_kfree_skb:
 kfree_skb(skb);
out_null:
 atomic_long_inc(&dev->tx_dropped);
 return ((void*)0);
}
