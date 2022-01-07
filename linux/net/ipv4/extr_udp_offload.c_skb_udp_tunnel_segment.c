
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int inner_protocol_type; size_t inner_ipproto; int inner_protocol; int protocol; } ;
struct TYPE_2__ {struct sk_buff* (* gso_segment ) (struct sk_buff*,int ) ;} ;
struct net_offload {TYPE_1__ callbacks; } ;
typedef int netdev_features_t ;
typedef int __be16 ;


 int EINVAL ;


 struct sk_buff* ERR_PTR (int ) ;
 struct sk_buff* __skb_udp_tunnel_segment (struct sk_buff*,int ,struct sk_buff* (*) (struct sk_buff*,int ),int ,int) ;
 struct net_offload** inet6_offloads ;
 struct net_offload** inet_offloads ;
 struct net_offload* rcu_dereference (struct net_offload const*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sk_buff* skb_mac_gso_segment (struct sk_buff*,int ) ;

struct sk_buff *skb_udp_tunnel_segment(struct sk_buff *skb,
           netdev_features_t features,
           bool is_ipv6)
{
 __be16 protocol = skb->protocol;
 const struct net_offload **offloads;
 const struct net_offload *ops;
 struct sk_buff *segs = ERR_PTR(-EINVAL);
 struct sk_buff *(*gso_inner_segment)(struct sk_buff *skb,
          netdev_features_t features);

 rcu_read_lock();

 switch (skb->inner_protocol_type) {
 case 129:
  protocol = skb->inner_protocol;
  gso_inner_segment = skb_mac_gso_segment;
  break;
 case 128:
  offloads = is_ipv6 ? inet6_offloads : inet_offloads;
  ops = rcu_dereference(offloads[skb->inner_ipproto]);
  if (!ops || !ops->callbacks.gso_segment)
   goto out_unlock;
  gso_inner_segment = ops->callbacks.gso_segment;
  break;
 default:
  goto out_unlock;
 }

 segs = __skb_udp_tunnel_segment(skb, features, gso_inner_segment,
     protocol, is_ipv6);

out_unlock:
 rcu_read_unlock();

 return segs;
}
