
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tc_sfb_qopt {scalar_t__ limit; int penalty_burst; int penalty_rate; int bin_size; int max; int decrement; int increment; int warmup_time; int rehash_interval; } ;
struct sfb_sched_data {int double_buffering; scalar_t__ slot; void* token_time; int tokens_avail; int penalty_burst; int penalty_rate; int bin_size; int max; int decrement; int increment; scalar_t__ limit; void* rehash_time; void* warmup_time; void* rehash_interval; struct Qdisc* qdisc; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {scalar_t__ tx_queue_len; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct Qdisc*) ;
 int PTR_ERR (struct Qdisc*) ;
 int TCA_SFB_MAX ;
 size_t TCA_SFB_PARMS ;
 struct Qdisc* fifo_create_dflt (struct Qdisc*,int *,scalar_t__,struct netlink_ext_ack*) ;
 void* jiffies ;
 void* msecs_to_jiffies (int ) ;
 struct tc_sfb_qopt* nla_data (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 struct Qdisc noop_qdisc ;
 int pfifo_qdisc_ops ;
 TYPE_1__* qdisc_dev (struct Qdisc*) ;
 int qdisc_hash_add (struct Qdisc*,int) ;
 struct sfb_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_purge_queue (struct Qdisc*) ;
 int qdisc_put (struct Qdisc*) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;
 struct tc_sfb_qopt sfb_default_ops ;
 int sfb_init_perturbation (int,struct sfb_sched_data*) ;
 int sfb_policy ;
 int sfb_zero_all_buckets (struct sfb_sched_data*) ;

__attribute__((used)) static int sfb_change(struct Qdisc *sch, struct nlattr *opt,
        struct netlink_ext_ack *extack)
{
 struct sfb_sched_data *q = qdisc_priv(sch);
 struct Qdisc *child, *old;
 struct nlattr *tb[TCA_SFB_MAX + 1];
 const struct tc_sfb_qopt *ctl = &sfb_default_ops;
 u32 limit;
 int err;

 if (opt) {
  err = nla_parse_nested_deprecated(tb, TCA_SFB_MAX, opt,
        sfb_policy, ((void*)0));
  if (err < 0)
   return -EINVAL;

  if (tb[TCA_SFB_PARMS] == ((void*)0))
   return -EINVAL;

  ctl = nla_data(tb[TCA_SFB_PARMS]);
 }

 limit = ctl->limit;
 if (limit == 0)
  limit = qdisc_dev(sch)->tx_queue_len;

 child = fifo_create_dflt(sch, &pfifo_qdisc_ops, limit, extack);
 if (IS_ERR(child))
  return PTR_ERR(child);

 if (child != &noop_qdisc)
  qdisc_hash_add(child, 1);
 sch_tree_lock(sch);

 qdisc_purge_queue(q->qdisc);
 old = q->qdisc;
 q->qdisc = child;

 q->rehash_interval = msecs_to_jiffies(ctl->rehash_interval);
 q->warmup_time = msecs_to_jiffies(ctl->warmup_time);
 q->rehash_time = jiffies;
 q->limit = limit;
 q->increment = ctl->increment;
 q->decrement = ctl->decrement;
 q->max = ctl->max;
 q->bin_size = ctl->bin_size;
 q->penalty_rate = ctl->penalty_rate;
 q->penalty_burst = ctl->penalty_burst;
 q->tokens_avail = ctl->penalty_burst;
 q->token_time = jiffies;

 q->slot = 0;
 q->double_buffering = 0;
 sfb_zero_all_buckets(q);
 sfb_init_perturbation(0, q);
 sfb_init_perturbation(1, q);

 sch_tree_unlock(sch);
 qdisc_put(old);

 return 0;
}
