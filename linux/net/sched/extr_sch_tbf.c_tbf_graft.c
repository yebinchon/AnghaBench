
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbf_sched_data {int qdisc; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int dummy; } ;


 struct Qdisc noop_qdisc ;
 struct tbf_sched_data* qdisc_priv (struct Qdisc*) ;
 struct Qdisc* qdisc_replace (struct Qdisc*,struct Qdisc*,int *) ;

__attribute__((used)) static int tbf_graft(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
       struct Qdisc **old, struct netlink_ext_ack *extack)
{
 struct tbf_sched_data *q = qdisc_priv(sch);

 if (new == ((void*)0))
  new = &noop_qdisc;

 *old = qdisc_replace(sch, new, &q->qdisc);
 return 0;
}
