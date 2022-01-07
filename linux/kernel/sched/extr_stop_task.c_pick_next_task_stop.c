
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq_flags {int dummy; } ;
struct rq {struct task_struct* stop; } ;


 int WARN_ON_ONCE (int) ;
 int sched_stop_runnable (struct rq*) ;
 int set_next_task_stop (struct rq*,struct task_struct*) ;

__attribute__((used)) static struct task_struct *
pick_next_task_stop(struct rq *rq, struct task_struct *prev, struct rq_flags *rf)
{
 WARN_ON_ONCE(prev || rf);

 if (!sched_stop_runnable(rq))
  return ((void*)0);

 set_next_task_stop(rq, rq->stop);
 return rq->stop;
}
