
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skbprio_sched_data {int lowest_prio; scalar_t__ highest_prio; int qstats; int * qdiscs; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct TYPE_3__ {scalar_t__ backlog; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__ qstats; } ;


 int SKBPRIO_MAX_PRIORITY ;
 int __skb_queue_purge (int *) ;
 int memset (int *,int ,int) ;
 struct skbprio_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void skbprio_reset(struct Qdisc *sch)
{
 struct skbprio_sched_data *q = qdisc_priv(sch);
 int prio;

 sch->qstats.backlog = 0;
 sch->q.qlen = 0;

 for (prio = 0; prio < SKBPRIO_MAX_PRIORITY; prio++)
  __skb_queue_purge(&q->qdiscs[prio]);

 memset(&q->qstats, 0, sizeof(q->qstats));
 q->highest_prio = 0;
 q->lowest_prio = SKBPRIO_MAX_PRIORITY - 1;
}
