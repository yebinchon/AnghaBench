
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfq_sched_data {int red_parms; int slots; int ht; int perturb_timer; scalar_t__ perturb_period; int block; } ;
struct Qdisc {int dummy; } ;


 int del_timer_sync (int *) ;
 int kfree (int ) ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;
 int sfq_free (int ) ;
 int tcf_block_put (int ) ;

__attribute__((used)) static void sfq_destroy(struct Qdisc *sch)
{
 struct sfq_sched_data *q = qdisc_priv(sch);

 tcf_block_put(q->block);
 q->perturb_period = 0;
 del_timer_sync(&q->perturb_timer);
 sfq_free(q->ht);
 sfq_free(q->slots);
 kfree(q->red_parms);
}
