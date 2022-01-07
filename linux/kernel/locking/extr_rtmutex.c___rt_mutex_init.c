
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex {int waiters; int wait_lock; int * owner; } ;
struct lock_class_key {int dummy; } ;


 int RB_ROOT_CACHED ;
 int debug_rt_mutex_init (struct rt_mutex*,char const*,struct lock_class_key*) ;
 int raw_spin_lock_init (int *) ;

void __rt_mutex_init(struct rt_mutex *lock, const char *name,
       struct lock_class_key *key)
{
 lock->owner = ((void*)0);
 raw_spin_lock_init(&lock->wait_lock);
 lock->waiters = RB_ROOT_CACHED;

 if (name && key)
  debug_rt_mutex_init(lock, name, key);
}
