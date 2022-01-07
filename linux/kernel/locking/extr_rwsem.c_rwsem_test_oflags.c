
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int owner; } ;


 long atomic_long_read (int *) ;

__attribute__((used)) static inline bool rwsem_test_oflags(struct rw_semaphore *sem, long flags)
{
 return atomic_long_read(&sem->owner) & flags;
}
