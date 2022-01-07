
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct Qdisc* qdisc; } ;
struct etf_sched_data {scalar_t__ last; TYPE_2__ watchdog; } ;
struct TYPE_6__ {scalar_t__ qlen; } ;
struct TYPE_4__ {scalar_t__ backlog; } ;
struct Qdisc {TYPE_3__ q; TYPE_1__ qstats; } ;


 int __qdisc_reset_queue (TYPE_3__*) ;
 struct etf_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_cancel (TYPE_2__*) ;
 int timesortedlist_clear (struct Qdisc*) ;

__attribute__((used)) static void etf_reset(struct Qdisc *sch)
{
 struct etf_sched_data *q = qdisc_priv(sch);


 if (q->watchdog.qdisc == sch)
  qdisc_watchdog_cancel(&q->watchdog);


 timesortedlist_clear(sch);
 __qdisc_reset_queue(&sch->q);

 sch->qstats.backlog = 0;
 sch->q.qlen = 0;

 q->last = 0;
}
