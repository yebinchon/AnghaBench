
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct prio_sched_data {int bands; int * queues; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct TYPE_3__ {scalar_t__ backlog; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__ qstats; } ;


 struct prio_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset (int ) ;

__attribute__((used)) static void
prio_reset(struct Qdisc *sch)
{
 int prio;
 struct prio_sched_data *q = qdisc_priv(sch);

 for (prio = 0; prio < q->bands; prio++)
  qdisc_reset(q->queues[prio]);
 sch->qstats.backlog = 0;
 sch->q.qlen = 0;
}
