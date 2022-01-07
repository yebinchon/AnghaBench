
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct red_sched_data {int vars; int qdisc; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct TYPE_3__ {scalar_t__ backlog; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__ qstats; } ;


 struct red_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset (int ) ;
 int red_restart (int *) ;

__attribute__((used)) static void red_reset(struct Qdisc *sch)
{
 struct red_sched_data *q = qdisc_priv(sch);

 qdisc_reset(q->qdisc);
 sch->qstats.backlog = 0;
 sch->q.qlen = 0;
 red_restart(&q->vars);
}
