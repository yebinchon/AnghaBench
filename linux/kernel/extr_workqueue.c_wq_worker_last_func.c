
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work_func_t ;
struct worker {int last_func; } ;
struct task_struct {int dummy; } ;


 struct worker* kthread_data (struct task_struct*) ;

work_func_t wq_worker_last_func(struct task_struct *task)
{
 struct worker *worker = kthread_data(task);

 return worker->last_func;
}
