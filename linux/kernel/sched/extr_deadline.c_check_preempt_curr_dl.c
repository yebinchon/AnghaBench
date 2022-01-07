
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ deadline; } ;
struct task_struct {TYPE_2__ dl; } ;
struct rq {TYPE_1__* curr; } ;
struct TYPE_6__ {scalar_t__ deadline; } ;
struct TYPE_4__ {TYPE_3__ dl; } ;


 int check_preempt_equal_dl (struct rq*,struct task_struct*) ;
 scalar_t__ dl_entity_preempt (TYPE_2__*,TYPE_3__*) ;
 int resched_curr (struct rq*) ;
 int test_tsk_need_resched (TYPE_1__*) ;

__attribute__((used)) static void check_preempt_curr_dl(struct rq *rq, struct task_struct *p,
      int flags)
{
 if (dl_entity_preempt(&p->dl, &rq->curr->dl)) {
  resched_curr(rq);
  return;
 }
}
