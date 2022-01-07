
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fq_codel_sched_data {int flows; int backlogs; int block; } ;
struct Qdisc {int dummy; } ;


 int kvfree (int ) ;
 struct fq_codel_sched_data* qdisc_priv (struct Qdisc*) ;
 int tcf_block_put (int ) ;

__attribute__((used)) static void fq_codel_destroy(struct Qdisc *sch)
{
 struct fq_codel_sched_data *q = qdisc_priv(sch);

 tcf_block_put(q->block);
 kvfree(q->backlogs);
 kvfree(q->flows);
}
