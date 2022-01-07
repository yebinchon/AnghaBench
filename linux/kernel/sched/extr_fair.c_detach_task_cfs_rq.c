
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int vruntime; } ;
struct task_struct {struct sched_entity se; } ;
struct cfs_rq {scalar_t__ min_vruntime; } ;


 struct cfs_rq* cfs_rq_of (struct sched_entity*) ;
 int detach_entity_cfs_rq (struct sched_entity*) ;
 int place_entity (struct cfs_rq*,struct sched_entity*,int ) ;
 int vruntime_normalized (struct task_struct*) ;

__attribute__((used)) static void detach_task_cfs_rq(struct task_struct *p)
{
 struct sched_entity *se = &p->se;
 struct cfs_rq *cfs_rq = cfs_rq_of(se);

 if (!vruntime_normalized(p)) {




  place_entity(cfs_rq, se, 0);
  se->vruntime -= cfs_rq->min_vruntime;
 }

 detach_entity_cfs_rq(se);
}
