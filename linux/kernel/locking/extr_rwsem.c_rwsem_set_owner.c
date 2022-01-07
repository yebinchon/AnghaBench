
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int owner; } ;


 int atomic_long_set (int *,long) ;
 scalar_t__ current ;

__attribute__((used)) static inline void rwsem_set_owner(struct rw_semaphore *sem)
{
 atomic_long_set(&sem->owner, (long)current);
}
