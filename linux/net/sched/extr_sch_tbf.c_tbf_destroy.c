
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbf_sched_data {int qdisc; int watchdog; } ;
struct Qdisc {int dummy; } ;


 struct tbf_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (int ) ;
 int qdisc_watchdog_cancel (int *) ;

__attribute__((used)) static void tbf_destroy(struct Qdisc *sch)
{
 struct tbf_sched_data *q = qdisc_priv(sch);

 qdisc_watchdog_cancel(&q->watchdog);
 qdisc_put(q->qdisc);
}
