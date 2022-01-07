
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int count; } ;


 int RWSEM_READER_BIAS ;
 long RWSEM_READ_FAILED_MASK ;
 scalar_t__ WARN_ON_ONCE (int) ;
 long atomic_long_add_return_acquire (int ,int *) ;
 int rwsem_set_nonspinnable (struct rw_semaphore*) ;

__attribute__((used)) static inline bool rwsem_read_trylock(struct rw_semaphore *sem)
{
 long cnt = atomic_long_add_return_acquire(RWSEM_READER_BIAS, &sem->count);
 if (WARN_ON_ONCE(cnt < 0))
  rwsem_set_nonspinnable(sem);
 return !(cnt & RWSEM_READ_FAILED_MASK);
}
