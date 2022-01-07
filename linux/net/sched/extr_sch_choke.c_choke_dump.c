
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_red_qopt {int qth_min; int qth_max; int Wlog; int Scell_log; int Plog; int flags; int limit; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int qth_min; int Wlog; int qth_max; int max_P; int Scell_log; int Plog; } ;
struct choke_sched_data {TYPE_1__ parms; int flags; int limit; } ;
struct Qdisc {int dummy; } ;
typedef int opt ;


 int EMSGSIZE ;
 int TCA_CHOKE_MAX_P ;
 int TCA_CHOKE_PARMS ;
 int TCA_OPTIONS ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_red_qopt*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct choke_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int choke_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct choke_sched_data *q = qdisc_priv(sch);
 struct nlattr *opts = ((void*)0);
 struct tc_red_qopt opt = {
  .limit = q->limit,
  .flags = q->flags,
  .qth_min = q->parms.qth_min >> q->parms.Wlog,
  .qth_max = q->parms.qth_max >> q->parms.Wlog,
  .Wlog = q->parms.Wlog,
  .Plog = q->parms.Plog,
  .Scell_log = q->parms.Scell_log,
 };

 opts = nla_nest_start_noflag(skb, TCA_OPTIONS);
 if (opts == ((void*)0))
  goto nla_put_failure;

 if (nla_put(skb, TCA_CHOKE_PARMS, sizeof(opt), &opt) ||
     nla_put_u32(skb, TCA_CHOKE_MAX_P, q->parms.max_P))
  goto nla_put_failure;
 return nla_nest_end(skb, opts);

nla_put_failure:
 nla_nest_cancel(skb, opts);
 return -EMSGSIZE;
}
