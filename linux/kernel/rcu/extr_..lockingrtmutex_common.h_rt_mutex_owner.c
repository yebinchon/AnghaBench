
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rt_mutex {int owner; } ;


 scalar_t__ READ_ONCE (int ) ;
 unsigned long RT_MUTEX_HAS_WAITERS ;

__attribute__((used)) static inline struct task_struct *rt_mutex_owner(struct rt_mutex *lock)
{
 unsigned long owner = (unsigned long) READ_ONCE(lock->owner);

 return (struct task_struct *) (owner & ~RT_MUTEX_HAS_WAITERS);
}
