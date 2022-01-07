
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multiq_sched_data {struct Qdisc** queues; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int bstats; } ;


 scalar_t__ gnet_stats_copy_basic (int ,struct gnet_dump*,int *,int *) ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;
 scalar_t__ qdisc_qstats_copy (struct gnet_dump*,struct Qdisc*) ;
 int qdisc_root_sleeping_running (struct Qdisc*) ;

__attribute__((used)) static int multiq_dump_class_stats(struct Qdisc *sch, unsigned long cl,
     struct gnet_dump *d)
{
 struct multiq_sched_data *q = qdisc_priv(sch);
 struct Qdisc *cl_q;

 cl_q = q->queues[cl - 1];
 if (gnet_stats_copy_basic(qdisc_root_sleeping_running(sch),
      d, ((void*)0), &cl_q->bstats) < 0 ||
     qdisc_qstats_copy(d, cl_q) < 0)
  return -1;

 return 0;
}
