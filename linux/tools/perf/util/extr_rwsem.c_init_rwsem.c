
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int lock; } ;


 int pthread_rwlock_init (int *,int *) ;

int init_rwsem(struct rw_semaphore *sem)
{
 return pthread_rwlock_init(&sem->lock, ((void*)0));
}
