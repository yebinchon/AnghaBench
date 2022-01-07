
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int owner; } ;


 int atomic_long_set (int *,int ) ;

__attribute__((used)) static inline void rwsem_clear_owner(struct rw_semaphore *sem)
{
 atomic_long_set(&sem->owner, 0);
}
