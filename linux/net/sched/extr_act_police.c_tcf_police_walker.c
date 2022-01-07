
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_action_ops {int dummy; } ;
struct tc_action_net {int dummy; } ;
struct sk_buff {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct net {int dummy; } ;


 struct tc_action_net* net_generic (struct net*,int ) ;
 int police_net_id ;
 int tcf_generic_walker (struct tc_action_net*,struct sk_buff*,struct netlink_callback*,int,struct tc_action_ops const*,struct netlink_ext_ack*) ;

__attribute__((used)) static int tcf_police_walker(struct net *net, struct sk_buff *skb,
     struct netlink_callback *cb, int type,
     const struct tc_action_ops *ops,
     struct netlink_ext_ack *extack)
{
 struct tc_action_net *tn = net_generic(net, police_net_id);

 return tcf_generic_walker(tn, skb, cb, type, ops, extack);
}
