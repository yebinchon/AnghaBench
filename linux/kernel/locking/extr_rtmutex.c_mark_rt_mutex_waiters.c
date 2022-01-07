
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex {int owner; } ;


 unsigned long RT_MUTEX_HAS_WAITERS ;
 unsigned long cmpxchg_relaxed (unsigned long*,unsigned long,unsigned long) ;

__attribute__((used)) static inline void mark_rt_mutex_waiters(struct rt_mutex *lock)
{
 unsigned long owner, *p = (unsigned long *) &lock->owner;

 do {
  owner = *p;
 } while (cmpxchg_relaxed(p, owner,
     owner | RT_MUTEX_HAS_WAITERS) != owner);
}
