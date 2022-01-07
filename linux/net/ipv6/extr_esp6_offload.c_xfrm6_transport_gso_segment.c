
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ header_len; } ;
struct xfrm_state {TYPE_2__ props; } ;
struct xfrm_offload {size_t proto; } ;
struct sk_buff {int transport_header; } ;
struct TYPE_3__ {struct sk_buff* (* gso_segment ) (struct sk_buff*,int ) ;} ;
struct net_offload {TYPE_1__ callbacks; } ;
typedef int netdev_features_t ;


 int EINVAL ;
 struct sk_buff* ERR_PTR (int ) ;
 int * inet6_offloads ;
 scalar_t__ likely (int) ;
 struct net_offload* rcu_dereference (int ) ;
 struct sk_buff* stub1 (struct sk_buff*,int ) ;
 struct xfrm_offload* xfrm_offload (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *xfrm6_transport_gso_segment(struct xfrm_state *x,
         struct sk_buff *skb,
         netdev_features_t features)
{
 const struct net_offload *ops;
 struct sk_buff *segs = ERR_PTR(-EINVAL);
 struct xfrm_offload *xo = xfrm_offload(skb);

 skb->transport_header += x->props.header_len;
 ops = rcu_dereference(inet6_offloads[xo->proto]);
 if (likely(ops && ops->callbacks.gso_segment))
  segs = ops->callbacks.gso_segment(skb, features);

 return segs;
}
