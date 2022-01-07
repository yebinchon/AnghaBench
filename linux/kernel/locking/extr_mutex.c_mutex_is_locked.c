
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;


 int * __mutex_owner (struct mutex*) ;

bool mutex_is_locked(struct mutex *lock)
{
 return __mutex_owner(lock) != ((void*)0);
}
