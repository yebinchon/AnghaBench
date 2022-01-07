
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct load_weight {int inv_weight; } ;
struct sched_entity {struct load_weight load; } ;
struct task_struct {struct sched_entity se; } ;
struct cfs_rq {int dummy; } ;


 struct cfs_rq* cfs_rq_of (struct sched_entity*) ;
 int reweight_entity (struct cfs_rq*,struct sched_entity*,unsigned long,unsigned long) ;
 unsigned long scale_load (int ) ;
 int * sched_prio_to_weight ;
 int * sched_prio_to_wmult ;

void reweight_task(struct task_struct *p, int prio)
{
 struct sched_entity *se = &p->se;
 struct cfs_rq *cfs_rq = cfs_rq_of(se);
 struct load_weight *load = &se->load;
 unsigned long weight = scale_load(sched_prio_to_weight[prio]);

 reweight_entity(cfs_rq, se, weight, weight);
 load->inv_weight = sched_prio_to_wmult[prio];
}
