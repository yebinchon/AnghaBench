
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tcf_exts {size_t police; int nr_actions; size_t action; struct tc_action** actions; int type; } ;
struct tc_action {int type; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct tc_action*) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (struct tc_action*) ;
 int TCA_ACT_BIND ;
 int TCA_OLD_COMPAT ;
 int tcf_action_init (struct net*,struct tcf_proto*,struct nlattr*,struct nlattr*,int *,int,int ,struct tc_action**,size_t*,int,struct netlink_ext_ack*) ;
 struct tc_action* tcf_action_init_1 (struct net*,struct tcf_proto*,struct nlattr*,struct nlattr*,char*,int,int ,int,struct netlink_ext_ack*) ;

int tcf_exts_validate(struct net *net, struct tcf_proto *tp, struct nlattr **tb,
        struct nlattr *rate_tlv, struct tcf_exts *exts, bool ovr,
        bool rtnl_held, struct netlink_ext_ack *extack)
{
 if ((exts->action && tb[exts->action]) ||
     (exts->police && tb[exts->police])) {
  NL_SET_ERR_MSG(extack, "Classifier actions are not supported per compile options (CONFIG_NET_CLS_ACT)");
  return -EOPNOTSUPP;
 }


 return 0;
}
