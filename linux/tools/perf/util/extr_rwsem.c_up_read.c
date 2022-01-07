
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int lock; } ;


 scalar_t__ perf_singlethreaded ;
 int pthread_rwlock_unlock (int *) ;

int up_read(struct rw_semaphore *sem)
{
 return perf_singlethreaded ? 0 : pthread_rwlock_unlock(&sem->lock);
}
