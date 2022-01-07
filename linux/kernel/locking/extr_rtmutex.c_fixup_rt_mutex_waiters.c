
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex {int owner; } ;


 unsigned long READ_ONCE (unsigned long) ;
 unsigned long RT_MUTEX_HAS_WAITERS ;
 int WRITE_ONCE (unsigned long,unsigned long) ;
 scalar_t__ rt_mutex_has_waiters (struct rt_mutex*) ;

__attribute__((used)) static void fixup_rt_mutex_waiters(struct rt_mutex *lock)
{
 unsigned long owner, *p = (unsigned long *) &lock->owner;

 if (rt_mutex_has_waiters(lock))
  return;
 owner = READ_ONCE(*p);
 if (owner & RT_MUTEX_HAS_WAITERS)
  WRITE_ONCE(*p, owner & ~RT_MUTEX_HAS_WAITERS);
}
