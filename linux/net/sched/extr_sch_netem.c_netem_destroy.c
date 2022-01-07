
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netem_sched_data {int slot_dist; int delay_dist; scalar_t__ qdisc; int watchdog; } ;
struct Qdisc {int dummy; } ;


 int dist_free (int ) ;
 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (scalar_t__) ;
 int qdisc_watchdog_cancel (int *) ;

__attribute__((used)) static void netem_destroy(struct Qdisc *sch)
{
 struct netem_sched_data *q = qdisc_priv(sch);

 qdisc_watchdog_cancel(&q->watchdog);
 if (q->qdisc)
  qdisc_put(q->qdisc);
 dist_free(q->delay_dist);
 dist_free(q->slot_dist);
}
