
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ lockdep_recursion; int curr_chain_key; scalar_t__ lockdep_depth; } ;


 int INITIAL_CHAIN_KEY ;

void lockdep_init_task(struct task_struct *task)
{
 task->lockdep_depth = 0;
 task->curr_chain_key = INITIAL_CHAIN_KEY;
 task->lockdep_recursion = 0;
}
