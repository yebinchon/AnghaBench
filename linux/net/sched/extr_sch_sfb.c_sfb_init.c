
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfb_sched_data {int * qdisc; int filter_list; int block; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int dummy; } ;


 int noop_qdisc ;
 struct sfb_sched_data* qdisc_priv (struct Qdisc*) ;
 int sfb_change (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;
 int tcf_block_get (int *,int *,struct Qdisc*,struct netlink_ext_ack*) ;

__attribute__((used)) static int sfb_init(struct Qdisc *sch, struct nlattr *opt,
      struct netlink_ext_ack *extack)
{
 struct sfb_sched_data *q = qdisc_priv(sch);
 int err;

 err = tcf_block_get(&q->block, &q->filter_list, sch, extack);
 if (err)
  return err;

 q->qdisc = &noop_qdisc;
 return sfb_change(sch, opt, extack);
}
