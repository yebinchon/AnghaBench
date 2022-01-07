
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cbs_sched_data {struct Qdisc* qdisc; } ;
struct Qdisc {int dummy; } ;


 struct sk_buff* cbs_child_dequeue (struct Qdisc*,struct Qdisc*) ;
 struct cbs_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct sk_buff *cbs_dequeue_offload(struct Qdisc *sch)
{
 struct cbs_sched_data *q = qdisc_priv(sch);
 struct Qdisc *qdisc = q->qdisc;

 return cbs_child_dequeue(sch, qdisc);
}
