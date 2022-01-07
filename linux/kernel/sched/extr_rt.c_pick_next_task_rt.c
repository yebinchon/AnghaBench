
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq_flags {int dummy; } ;
struct rq {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 struct task_struct* _pick_next_task_rt (struct rq*) ;
 int sched_rt_runnable (struct rq*) ;
 int set_next_task_rt (struct rq*,struct task_struct*) ;

__attribute__((used)) static struct task_struct *
pick_next_task_rt(struct rq *rq, struct task_struct *prev, struct rq_flags *rf)
{
 struct task_struct *p;

 WARN_ON_ONCE(prev || rf);

 if (!sched_rt_runnable(rq))
  return ((void*)0);

 p = _pick_next_task_rt(rq);
 set_next_task_rt(rq, p);
 return p;
}
