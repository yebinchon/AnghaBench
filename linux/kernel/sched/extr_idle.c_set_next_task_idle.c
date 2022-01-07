
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq {int sched_goidle; } ;


 int schedstat_inc (int ) ;
 int update_idle_core (struct rq*) ;

__attribute__((used)) static void set_next_task_idle(struct rq *rq, struct task_struct *next)
{
 update_idle_core(rq);
 schedstat_inc(rq->sched_goidle);
}
