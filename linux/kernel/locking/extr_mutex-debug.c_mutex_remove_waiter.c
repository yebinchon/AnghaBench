
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct mutex_waiter* blocked_on; } ;
struct mutex_waiter {struct task_struct* task; int list; } ;
struct mutex {int dummy; } ;


 int DEBUG_LOCKS_WARN_ON (int) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;

void mutex_remove_waiter(struct mutex *lock, struct mutex_waiter *waiter,
    struct task_struct *task)
{
 DEBUG_LOCKS_WARN_ON(list_empty(&waiter->list));
 DEBUG_LOCKS_WARN_ON(waiter->task != task);
 DEBUG_LOCKS_WARN_ON(task->blocked_on != waiter);
 task->blocked_on = ((void*)0);

 list_del_init(&waiter->list);
 waiter->task = ((void*)0);
}
