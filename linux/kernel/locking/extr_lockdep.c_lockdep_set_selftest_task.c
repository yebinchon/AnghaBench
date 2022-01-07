
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 struct task_struct* lockdep_selftest_task_struct ;

void lockdep_set_selftest_task(struct task_struct *task)
{
 lockdep_selftest_task_struct = task;
}
