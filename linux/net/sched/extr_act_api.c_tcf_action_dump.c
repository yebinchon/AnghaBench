
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 int TCA_ACT_MAX_PRIO ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int) ;
 int tcf_action_dump_1 (struct sk_buff*,struct tc_action*,int,int) ;

int tcf_action_dump(struct sk_buff *skb, struct tc_action *actions[],
      int bind, int ref)
{
 struct tc_action *a;
 int err = -EINVAL, i;
 struct nlattr *nest;

 for (i = 0; i < TCA_ACT_MAX_PRIO && actions[i]; i++) {
  a = actions[i];
  nest = nla_nest_start_noflag(skb, i + 1);
  if (nest == ((void*)0))
   goto nla_put_failure;
  err = tcf_action_dump_1(skb, a, bind, ref);
  if (err < 0)
   goto errout;
  nla_nest_end(skb, nest);
 }

 return 0;

nla_put_failure:
 err = -EINVAL;
errout:
 nla_nest_cancel(skb, nest);
 return err;
}
