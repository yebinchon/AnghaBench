
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_rwlockattr_t ;
typedef int pthread_rwlock_t ;


 int __get_lock (int *) ;
 int ll_pthread_rwlock_init (int *,int const*) ;
 int try_init_preload () ;

int pthread_rwlock_init(pthread_rwlock_t *rwlock,
   const pthread_rwlockattr_t *attr)
{
 int r;

 try_init_preload();

 r = ll_pthread_rwlock_init(rwlock, attr);
 if (r == 0)
  __get_lock(rwlock);

 return r;
}
