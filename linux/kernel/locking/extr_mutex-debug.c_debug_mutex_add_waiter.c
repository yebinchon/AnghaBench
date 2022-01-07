
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct mutex_waiter* blocked_on; } ;
struct mutex_waiter {int dummy; } ;
struct mutex {int wait_lock; } ;


 int lockdep_assert_held (int *) ;

void debug_mutex_add_waiter(struct mutex *lock, struct mutex_waiter *waiter,
       struct task_struct *task)
{
 lockdep_assert_held(&lock->wait_lock);


 task->blocked_on = waiter;
}
