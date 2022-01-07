
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int on_rq; } ;
struct task_struct {scalar_t__ policy; struct sched_entity se; } ;
struct rq {struct task_struct* idle; struct task_struct* curr; } ;
struct cfs_rq {scalar_t__ nr_running; } ;


 int BUG_ON (int) ;
 int LAST_BUDDY ;
 int NEXT_BUDDY ;
 scalar_t__ SCHED_NORMAL ;
 int WAKEUP_PREEMPTION ;
 int WF_FORK ;
 int cfs_rq_of (struct sched_entity*) ;
 scalar_t__ entity_is_task (struct sched_entity*) ;
 int find_matching_se (struct sched_entity**,struct sched_entity**) ;
 scalar_t__ likely (int) ;
 int resched_curr (struct rq*) ;
 scalar_t__ sched_feat (int ) ;
 scalar_t__ sched_nr_latency ;
 int set_last_buddy (struct sched_entity*) ;
 int set_next_buddy (struct sched_entity*) ;
 struct cfs_rq* task_cfs_rq (struct task_struct*) ;
 int task_has_idle_policy (struct task_struct*) ;
 scalar_t__ test_tsk_need_resched (struct task_struct*) ;
 int throttled_hierarchy (int ) ;
 scalar_t__ unlikely (int) ;
 int update_curr (int ) ;
 int wakeup_preempt_entity (struct sched_entity*,struct sched_entity*) ;

__attribute__((used)) static void check_preempt_wakeup(struct rq *rq, struct task_struct *p, int wake_flags)
{
 struct task_struct *curr = rq->curr;
 struct sched_entity *se = &curr->se, *pse = &p->se;
 struct cfs_rq *cfs_rq = task_cfs_rq(curr);
 int scale = cfs_rq->nr_running >= sched_nr_latency;
 int next_buddy_marked = 0;

 if (unlikely(se == pse))
  return;







 if (unlikely(throttled_hierarchy(cfs_rq_of(pse))))
  return;

 if (sched_feat(NEXT_BUDDY) && scale && !(wake_flags & WF_FORK)) {
  set_next_buddy(pse);
  next_buddy_marked = 1;
 }
 if (test_tsk_need_resched(curr))
  return;


 if (unlikely(task_has_idle_policy(curr)) &&
     likely(!task_has_idle_policy(p)))
  goto preempt;





 if (unlikely(p->policy != SCHED_NORMAL) || !sched_feat(WAKEUP_PREEMPTION))
  return;

 find_matching_se(&se, &pse);
 update_curr(cfs_rq_of(se));
 BUG_ON(!pse);
 if (wakeup_preempt_entity(se, pse) == 1) {




  if (!next_buddy_marked)
   set_next_buddy(pse);
  goto preempt;
 }

 return;

preempt:
 resched_curr(rq);
 if (unlikely(!se->on_rq || curr == rq->idle))
  return;

 if (sched_feat(LAST_BUDDY) && scale && entity_is_task(se))
  set_last_buddy(se);
}
