
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;


 int __mutex_trylock_or_owner (struct mutex*) ;

__attribute__((used)) static inline bool __mutex_trylock(struct mutex *lock)
{
 return !__mutex_trylock_or_owner(lock);
}
