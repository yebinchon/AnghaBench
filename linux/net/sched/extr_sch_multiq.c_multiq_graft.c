
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct multiq_sched_data {int * queues; } ;
struct Qdisc {int dummy; } ;


 struct Qdisc noop_qdisc ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;
 struct Qdisc* qdisc_replace (struct Qdisc*,struct Qdisc*,int *) ;

__attribute__((used)) static int multiq_graft(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
   struct Qdisc **old, struct netlink_ext_ack *extack)
{
 struct multiq_sched_data *q = qdisc_priv(sch);
 unsigned long band = arg - 1;

 if (new == ((void*)0))
  new = &noop_qdisc;

 *old = qdisc_replace(sch, new, &q->queues[band]);
 return 0;
}
