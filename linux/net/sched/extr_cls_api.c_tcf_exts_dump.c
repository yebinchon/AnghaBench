
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_exts {scalar_t__ type; scalar_t__ police; int actions; scalar_t__ action; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 scalar_t__ TCA_OLD_COMPAT ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,scalar_t__) ;
 scalar_t__ tcf_action_dump (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ tcf_action_dump_old (struct sk_buff*,struct tc_action*,int ,int ) ;
 struct tc_action* tcf_exts_first_act (struct tcf_exts*) ;
 scalar_t__ tcf_exts_has_actions (struct tcf_exts*) ;

int tcf_exts_dump(struct sk_buff *skb, struct tcf_exts *exts)
{
 return 0;

}
