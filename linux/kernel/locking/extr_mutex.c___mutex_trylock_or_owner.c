
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mutex {int owner; } ;


 int DEBUG_LOCKS_WARN_ON (unsigned long) ;
 unsigned long MUTEX_FLAGS ;
 unsigned long MUTEX_FLAG_HANDOFF ;
 unsigned long MUTEX_FLAG_PICKUP ;
 unsigned long __owner_flags (unsigned long) ;
 struct task_struct* __owner_task (unsigned long) ;
 unsigned long atomic_long_cmpxchg_acquire (int *,unsigned long,unsigned long) ;
 unsigned long atomic_long_read (int *) ;
 scalar_t__ current ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline struct task_struct *__mutex_trylock_or_owner(struct mutex *lock)
{
 unsigned long owner, curr = (unsigned long)current;

 owner = atomic_long_read(&lock->owner);
 for (;;) {
  unsigned long old, flags = __owner_flags(owner);
  unsigned long task = owner & ~MUTEX_FLAGS;

  if (task) {
   if (likely(task != curr))
    break;

   if (likely(!(flags & MUTEX_FLAG_PICKUP)))
    break;

   flags &= ~MUTEX_FLAG_PICKUP;
  } else {



  }






  flags &= ~MUTEX_FLAG_HANDOFF;

  old = atomic_long_cmpxchg_acquire(&lock->owner, owner, curr | flags);
  if (old == owner)
   return ((void*)0);

  owner = old;
 }

 return __owner_task(owner);
}
