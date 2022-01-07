
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tc_red_qopt {scalar_t__ limit; int flags; int Scell_log; int Plog; int Wlog; int qth_max; int qth_min; } ;
struct red_sched_data {int flags; scalar_t__ limit; int vars; struct Qdisc* qdisc; int adapt_timer; int parms; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 int EINVAL ;
 int HZ ;
 scalar_t__ IS_ERR (struct Qdisc*) ;
 int PTR_ERR (struct Qdisc*) ;
 int TCA_RED_MAX ;
 size_t TCA_RED_MAX_P ;
 size_t TCA_RED_PARMS ;
 size_t TCA_RED_STAB ;
 int TC_RED_ADAPTATIVE ;
 int bfifo_qdisc_ops ;
 int del_timer (int *) ;
 struct Qdisc* fifo_create_dflt (struct Qdisc*,int *,scalar_t__,struct netlink_ext_ack*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct tc_red_qopt* nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int qdisc_hash_add (struct Qdisc*,int) ;
 struct red_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (struct Qdisc*) ;
 int qdisc_tree_flush_backlog (struct Qdisc*) ;
 int red_check_params (int ,int ,int ) ;
 int red_offload (struct Qdisc*,int) ;
 int red_policy ;
 int red_set_parms (int *,int ,int ,int ,int ,int ,struct tc_red_qopt*,int ) ;
 int red_set_vars (int *) ;
 int red_start_of_idle_period (int *) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int red_change(struct Qdisc *sch, struct nlattr *opt,
        struct netlink_ext_ack *extack)
{
 struct Qdisc *old_child = ((void*)0), *child = ((void*)0);
 struct red_sched_data *q = qdisc_priv(sch);
 struct nlattr *tb[TCA_RED_MAX + 1];
 struct tc_red_qopt *ctl;
 int err;
 u32 max_P;

 if (opt == ((void*)0))
  return -EINVAL;

 err = nla_parse_nested_deprecated(tb, TCA_RED_MAX, opt, red_policy,
       ((void*)0));
 if (err < 0)
  return err;

 if (tb[TCA_RED_PARMS] == ((void*)0) ||
     tb[TCA_RED_STAB] == ((void*)0))
  return -EINVAL;

 max_P = tb[TCA_RED_MAX_P] ? nla_get_u32(tb[TCA_RED_MAX_P]) : 0;

 ctl = nla_data(tb[TCA_RED_PARMS]);
 if (!red_check_params(ctl->qth_min, ctl->qth_max, ctl->Wlog))
  return -EINVAL;

 if (ctl->limit > 0) {
  child = fifo_create_dflt(sch, &bfifo_qdisc_ops, ctl->limit,
      extack);
  if (IS_ERR(child))
   return PTR_ERR(child);


  qdisc_hash_add(child, 1);
 }

 sch_tree_lock(sch);
 q->flags = ctl->flags;
 q->limit = ctl->limit;
 if (child) {
  qdisc_tree_flush_backlog(q->qdisc);
  old_child = q->qdisc;
  q->qdisc = child;
 }

 red_set_parms(&q->parms,
        ctl->qth_min, ctl->qth_max, ctl->Wlog,
        ctl->Plog, ctl->Scell_log,
        nla_data(tb[TCA_RED_STAB]),
        max_P);
 red_set_vars(&q->vars);

 del_timer(&q->adapt_timer);
 if (ctl->flags & TC_RED_ADAPTATIVE)
  mod_timer(&q->adapt_timer, jiffies + HZ/2);

 if (!q->qdisc->q.qlen)
  red_start_of_idle_period(&q->vars);

 sch_tree_unlock(sch);

 red_offload(sch, 1);

 if (old_child)
  qdisc_put(old_child);
 return 0;
}
