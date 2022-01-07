
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int __tcf_ipt_init (struct net*,int ,struct nlattr*,struct nlattr*,struct tc_action**,int *,int,int,struct tcf_proto*) ;
 int act_xt_ops ;
 int xt_net_id ;

__attribute__((used)) static int tcf_xt_init(struct net *net, struct nlattr *nla,
         struct nlattr *est, struct tc_action **a, int ovr,
         int bind, bool unlocked, struct tcf_proto *tp,
         struct netlink_ext_ack *extack)
{
 return __tcf_ipt_init(net, xt_net_id, nla, est, a, &act_xt_ops, ovr,
         bind, tp);
}
