
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int owner; } ;


 unsigned long RWSEM_NONSPINNABLE ;
 unsigned long RWSEM_READER_OWNED ;
 unsigned long atomic_long_read (int *) ;
 int atomic_long_try_cmpxchg (int *,unsigned long*,unsigned long) ;

__attribute__((used)) static inline void rwsem_set_nonspinnable(struct rw_semaphore *sem)
{
 unsigned long owner = atomic_long_read(&sem->owner);

 do {
  if (!(owner & RWSEM_READER_OWNED))
   break;
  if (owner & RWSEM_NONSPINNABLE)
   break;
 } while (!atomic_long_try_cmpxchg(&sem->owner, &owner,
       owner | RWSEM_NONSPINNABLE));
}
