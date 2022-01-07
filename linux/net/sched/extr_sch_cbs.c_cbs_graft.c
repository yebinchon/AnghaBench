
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct cbs_sched_data {int qdisc; } ;
struct Qdisc {int handle; int dev_queue; } ;


 struct Qdisc noop_qdisc ;
 int pfifo_qdisc_ops ;
 struct Qdisc* qdisc_create_dflt (int ,int *,int ,int *) ;
 struct cbs_sched_data* qdisc_priv (struct Qdisc*) ;
 struct Qdisc* qdisc_replace (struct Qdisc*,struct Qdisc*,int *) ;

__attribute__((used)) static int cbs_graft(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
       struct Qdisc **old, struct netlink_ext_ack *extack)
{
 struct cbs_sched_data *q = qdisc_priv(sch);

 if (!new) {
  new = qdisc_create_dflt(sch->dev_queue, &pfifo_qdisc_ops,
     sch->handle, ((void*)0));
  if (!new)
   new = &noop_qdisc;
 }

 *old = qdisc_replace(sch, new, &q->qdisc);
 return 0;
}
