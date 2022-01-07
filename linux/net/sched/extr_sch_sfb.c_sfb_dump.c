
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tc_sfb_qopt {int penalty_burst; int penalty_rate; int decrement; int increment; int bin_size; int max; int limit; int warmup_time; int rehash_interval; } ;
struct sk_buff {int dummy; } ;
struct sfb_sched_data {TYPE_3__* qdisc; int penalty_burst; int penalty_rate; int decrement; int increment; int bin_size; int max; int limit; int warmup_time; int rehash_interval; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int backlog; } ;
struct Qdisc {TYPE_1__ qstats; } ;
typedef int opt ;
struct TYPE_5__ {int backlog; } ;
struct TYPE_6__ {TYPE_2__ qstats; } ;


 int EMSGSIZE ;
 int TCA_OPTIONS ;
 int TCA_SFB_PARMS ;
 int jiffies_to_msecs (int ) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_sfb_qopt*) ;
 struct sfb_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int sfb_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct sfb_sched_data *q = qdisc_priv(sch);
 struct nlattr *opts;
 struct tc_sfb_qopt opt = {
  .rehash_interval = jiffies_to_msecs(q->rehash_interval),
  .warmup_time = jiffies_to_msecs(q->warmup_time),
  .limit = q->limit,
  .max = q->max,
  .bin_size = q->bin_size,
  .increment = q->increment,
  .decrement = q->decrement,
  .penalty_rate = q->penalty_rate,
  .penalty_burst = q->penalty_burst,
 };

 sch->qstats.backlog = q->qdisc->qstats.backlog;
 opts = nla_nest_start_noflag(skb, TCA_OPTIONS);
 if (opts == ((void*)0))
  goto nla_put_failure;
 if (nla_put(skb, TCA_SFB_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;
 return nla_nest_end(skb, opts);

nla_put_failure:
 nla_nest_cancel(skb, opts);
 return -EMSGSIZE;
}
