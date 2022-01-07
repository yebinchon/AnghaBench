
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skbprio_sched_data {int * qdiscs; } ;
struct Qdisc {int dummy; } ;


 int SKBPRIO_MAX_PRIORITY ;
 int __skb_queue_purge (int *) ;
 struct skbprio_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void skbprio_destroy(struct Qdisc *sch)
{
 struct skbprio_sched_data *q = qdisc_priv(sch);
 int prio;

 for (prio = 0; prio < SKBPRIO_MAX_PRIORITY; prio++)
  __skb_queue_purge(&q->qdiscs[prio]);
}
