
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multiq_sched_data {struct Qdisc** queues; } ;
struct Qdisc {int dummy; } ;


 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct Qdisc *
multiq_leaf(struct Qdisc *sch, unsigned long arg)
{
 struct multiq_sched_data *q = qdisc_priv(sch);
 unsigned long band = arg - 1;

 return q->queues[band];
}
