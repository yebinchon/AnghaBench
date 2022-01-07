
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* sched_class; } ;
struct rq {struct task_struct* curr; } ;
struct TYPE_2__ {int (* set_next_task ) (struct rq*,struct task_struct*) ;} ;


 int WARN_ON_ONCE (int) ;
 int stub1 (struct rq*,struct task_struct*) ;

__attribute__((used)) static inline void set_next_task(struct rq *rq, struct task_struct *next)
{
 WARN_ON_ONCE(rq->curr != next);
 next->sched_class->set_next_task(rq, next);
}
