
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct codel_sched_data {int vars; } ;
struct Qdisc {int dummy; } ;


 int codel_vars_init (int *) ;
 struct codel_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_reset_queue (struct Qdisc*) ;

__attribute__((used)) static void codel_reset(struct Qdisc *sch)
{
 struct codel_sched_data *q = qdisc_priv(sch);

 qdisc_reset_queue(sch);
 codel_vars_init(&q->vars);
}
