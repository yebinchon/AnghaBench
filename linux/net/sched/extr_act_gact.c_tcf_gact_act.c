
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcf_result {int dummy; } ;
struct TYPE_2__ {int cpu_qstats; int cpu_bstats; } ;
struct tcf_gact {int tcf_tm; TYPE_1__ common; int tcfg_ptype; int tcf_action; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;


 int READ_ONCE (int ) ;
 int TC_ACT_SHOT ;
 int bstats_cpu_update (int ,struct sk_buff*) ;
 int gact_rand (struct tcf_gact*) ;
 int qstats_drop_inc (int ) ;
 int stub1 (struct tcf_gact*) ;
 int tcf_lastuse_update (int *) ;
 int this_cpu_ptr (int ) ;
 struct tcf_gact* to_gact (struct tc_action const*) ;

__attribute__((used)) static int tcf_gact_act(struct sk_buff *skb, const struct tc_action *a,
   struct tcf_result *res)
{
 struct tcf_gact *gact = to_gact(a);
 int action = READ_ONCE(gact->tcf_action);
 bstats_cpu_update(this_cpu_ptr(gact->common.cpu_bstats), skb);
 if (action == TC_ACT_SHOT)
  qstats_drop_inc(this_cpu_ptr(gact->common.cpu_qstats));

 tcf_lastuse_update(&gact->tcf_tm);

 return action;
}
