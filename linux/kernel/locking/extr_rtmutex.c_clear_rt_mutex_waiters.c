
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rt_mutex {struct task_struct* owner; } ;


 unsigned long RT_MUTEX_HAS_WAITERS ;

__attribute__((used)) static inline void clear_rt_mutex_waiters(struct rt_mutex *lock)
{
 lock->owner = (struct task_struct *)
   ((unsigned long)lock->owner & ~RT_MUTEX_HAS_WAITERS);
}
