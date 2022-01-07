
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prio_sched_data {int bands; int * queues; int block; } ;
struct Qdisc {int dummy; } ;


 int prio_offload (struct Qdisc*,int *) ;
 struct prio_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (int ) ;
 int tcf_block_put (int ) ;

__attribute__((used)) static void
prio_destroy(struct Qdisc *sch)
{
 int prio;
 struct prio_sched_data *q = qdisc_priv(sch);

 tcf_block_put(q->block);
 prio_offload(sch, ((void*)0));
 for (prio = 0; prio < q->bands; prio++)
  qdisc_put(q->queues[prio]);
}
