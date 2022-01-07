
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tupdate; } ;
struct pie_sched_data {int adapt_timer; TYPE_1__ params; } ;
struct Qdisc {int dummy; } ;


 int del_timer_sync (int *) ;
 struct pie_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void pie_destroy(struct Qdisc *sch)
{
 struct pie_sched_data *q = qdisc_priv(sch);

 q->params.tupdate = 0;
 del_timer_sync(&q->adapt_timer);
}
