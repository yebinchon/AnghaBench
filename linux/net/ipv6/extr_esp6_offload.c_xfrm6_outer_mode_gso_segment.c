
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encap; } ;
struct xfrm_state {TYPE_1__ outer_mode; } ;
struct sk_buff {int dummy; } ;
typedef int netdev_features_t ;


 int EOPNOTSUPP ;
 struct sk_buff* ERR_PTR (int ) ;


 struct sk_buff* xfrm6_transport_gso_segment (struct xfrm_state*,struct sk_buff*,int ) ;
 struct sk_buff* xfrm6_tunnel_gso_segment (struct xfrm_state*,struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *xfrm6_outer_mode_gso_segment(struct xfrm_state *x,
          struct sk_buff *skb,
          netdev_features_t features)
{
 switch (x->outer_mode.encap) {
 case 128:
  return xfrm6_tunnel_gso_segment(x, skb, features);
 case 129:
  return xfrm6_transport_gso_segment(x, skb, features);
 }

 return ERR_PTR(-EOPNOTSUPP);
}
