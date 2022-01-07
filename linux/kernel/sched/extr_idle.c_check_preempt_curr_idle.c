
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq {int dummy; } ;


 int resched_curr (struct rq*) ;

__attribute__((used)) static void check_preempt_curr_idle(struct rq *rq, struct task_struct *p, int flags)
{
 resched_curr(rq);
}
