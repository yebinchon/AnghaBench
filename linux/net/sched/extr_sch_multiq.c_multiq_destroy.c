
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multiq_sched_data {int bands; int * queues; int block; } ;
struct Qdisc {int dummy; } ;


 int kfree (int *) ;
 struct multiq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (int ) ;
 int tcf_block_put (int ) ;

__attribute__((used)) static void
multiq_destroy(struct Qdisc *sch)
{
 int band;
 struct multiq_sched_data *q = qdisc_priv(sch);

 tcf_block_put(q->block);
 for (band = 0; band < q->bands; band++)
  qdisc_put(q->queues[band]);

 kfree(q->queues);
}
