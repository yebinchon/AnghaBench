
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfb_sched_data {int qdisc; int block; } ;
struct Qdisc {int dummy; } ;


 struct sfb_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (int ) ;
 int tcf_block_put (int ) ;

__attribute__((used)) static void sfb_destroy(struct Qdisc *sch)
{
 struct sfb_sched_data *q = qdisc_priv(sch);

 tcf_block_put(q->block);
 qdisc_put(q->qdisc);
}
