
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int * magic; } ;


 int DEBUG_LOCKS_WARN_ON (int ) ;
 int mutex_is_locked (struct mutex*) ;

void mutex_destroy(struct mutex *lock)
{
 DEBUG_LOCKS_WARN_ON(mutex_is_locked(lock));
 lock->magic = ((void*)0);
}
