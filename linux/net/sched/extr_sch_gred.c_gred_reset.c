
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gred_sched_data {scalar_t__ backlog; int vars; } ;
struct gred_sched {int DPs; struct gred_sched_data** tab; } ;
struct Qdisc {int dummy; } ;


 struct gred_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset_queue (struct Qdisc*) ;
 int red_restart (int *) ;

__attribute__((used)) static void gred_reset(struct Qdisc *sch)
{
 int i;
 struct gred_sched *t = qdisc_priv(sch);

 qdisc_reset_queue(sch);

 for (i = 0; i < t->DPs; i++) {
  struct gred_sched_data *q = t->tab[i];

  if (!q)
   continue;

  red_restart(&q->vars);
  q->backlog = 0;
 }
}
