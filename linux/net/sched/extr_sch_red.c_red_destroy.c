
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct red_sched_data {int qdisc; int adapt_timer; } ;
struct Qdisc {int dummy; } ;


 int del_timer_sync (int *) ;
 struct red_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (int ) ;
 int red_offload (struct Qdisc*,int) ;

__attribute__((used)) static void red_destroy(struct Qdisc *sch)
{
 struct red_sched_data *q = qdisc_priv(sch);

 del_timer_sync(&q->adapt_timer);
 red_offload(sch, 0);
 qdisc_put(q->qdisc);
}
