
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sfb_sched_data {int double_buffering; scalar_t__ slot; int qdisc; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct TYPE_3__ {scalar_t__ backlog; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__ qstats; } ;


 struct sfb_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset (int ) ;
 int sfb_init_perturbation (int ,struct sfb_sched_data*) ;
 int sfb_zero_all_buckets (struct sfb_sched_data*) ;

__attribute__((used)) static void sfb_reset(struct Qdisc *sch)
{
 struct sfb_sched_data *q = qdisc_priv(sch);

 qdisc_reset(q->qdisc);
 sch->qstats.backlog = 0;
 sch->q.qlen = 0;
 q->slot = 0;
 q->double_buffering = 0;
 sfb_zero_all_buckets(q);
 sfb_init_perturbation(0, q);
}
