
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ovs_conntrack_info {int dummy; } ;
struct net {int dummy; } ;


 int ENOTSUPP ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static inline int ovs_ct_execute(struct net *net, struct sk_buff *skb,
     struct sw_flow_key *key,
     const struct ovs_conntrack_info *info)
{
 kfree_skb(skb);
 return -ENOTSUPP;
}
