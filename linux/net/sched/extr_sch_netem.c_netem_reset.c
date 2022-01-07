
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netem_sched_data {int watchdog; scalar_t__ qdisc; } ;
struct Qdisc {int dummy; } ;


 struct netem_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset (scalar_t__) ;
 int qdisc_reset_queue (struct Qdisc*) ;
 int qdisc_watchdog_cancel (int *) ;
 int tfifo_reset (struct Qdisc*) ;

__attribute__((used)) static void netem_reset(struct Qdisc *sch)
{
 struct netem_sched_data *q = qdisc_priv(sch);

 qdisc_reset_queue(sch);
 tfifo_reset(sch);
 if (q->qdisc)
  qdisc_reset(q->qdisc);
 qdisc_watchdog_cancel(&q->watchdog);
}
