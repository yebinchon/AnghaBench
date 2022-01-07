
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int alpha; int beta; int ecn; int bytemode; int tupdate; int target; } ;
struct pie_sched_data {TYPE_1__ params; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int limit; } ;


 int NSEC_PER_USEC ;
 scalar_t__ PSCHED_TICKS2NS (int ) ;
 int TCA_OPTIONS ;
 int TCA_PIE_ALPHA ;
 int TCA_PIE_BETA ;
 int TCA_PIE_BYTEMODE ;
 int TCA_PIE_ECN ;
 int TCA_PIE_LIMIT ;
 int TCA_PIE_TARGET ;
 int TCA_PIE_TUPDATE ;
 int jiffies_to_usecs (int ) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 struct pie_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int pie_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct pie_sched_data *q = qdisc_priv(sch);
 struct nlattr *opts;

 opts = nla_nest_start_noflag(skb, TCA_OPTIONS);
 if (!opts)
  goto nla_put_failure;


 if (nla_put_u32(skb, TCA_PIE_TARGET,
   ((u32)PSCHED_TICKS2NS(q->params.target)) /
   NSEC_PER_USEC) ||
     nla_put_u32(skb, TCA_PIE_LIMIT, sch->limit) ||
     nla_put_u32(skb, TCA_PIE_TUPDATE,
   jiffies_to_usecs(q->params.tupdate)) ||
     nla_put_u32(skb, TCA_PIE_ALPHA, q->params.alpha) ||
     nla_put_u32(skb, TCA_PIE_BETA, q->params.beta) ||
     nla_put_u32(skb, TCA_PIE_ECN, q->params.ecn) ||
     nla_put_u32(skb, TCA_PIE_BYTEMODE, q->params.bytemode))
  goto nla_put_failure;

 return nla_nest_end(skb, opts);

nla_put_failure:
 nla_nest_cancel(skb, opts);
 return -1;
}
