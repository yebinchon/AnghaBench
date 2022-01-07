
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_exts {int dummy; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ tcf_action_copy_stats (struct sk_buff*,struct tc_action*,int) ;
 struct tc_action* tcf_exts_first_act (struct tcf_exts*) ;

int tcf_exts_dump_stats(struct sk_buff *skb, struct tcf_exts *exts)
{





 return 0;
}
