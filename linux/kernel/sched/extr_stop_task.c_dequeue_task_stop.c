
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq {int dummy; } ;


 int sub_nr_running (struct rq*,int) ;

__attribute__((used)) static void
dequeue_task_stop(struct rq *rq, struct task_struct *p, int flags)
{
 sub_nr_running(rq, 1);
}
