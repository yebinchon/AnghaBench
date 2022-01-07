
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int dummy; } ;
struct sk_buff {int mac_len; } ;
typedef int netdev_features_t ;


 int __skb_push (struct sk_buff*,int ) ;
 struct sk_buff* skb_mac_gso_segment (struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *xfrm4_tunnel_gso_segment(struct xfrm_state *x,
      struct sk_buff *skb,
      netdev_features_t features)
{
 __skb_push(skb, skb->mac_len);
 return skb_mac_gso_segment(skb, features);
}
