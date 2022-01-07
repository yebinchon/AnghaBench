
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cake_sched_data {int tins; int block; int watchdog; } ;
struct Qdisc {int dummy; } ;


 int kvfree (int ) ;
 struct cake_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_cancel (int *) ;
 int tcf_block_put (int ) ;

__attribute__((used)) static void cake_destroy(struct Qdisc *sch)
{
 struct cake_sched_data *q = qdisc_priv(sch);

 qdisc_watchdog_cancel(&q->watchdog);
 tcf_block_put(q->block);
 kvfree(q->tins);
}
