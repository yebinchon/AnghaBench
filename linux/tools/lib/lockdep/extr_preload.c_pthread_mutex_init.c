
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutexattr_t ;
typedef int pthread_mutex_t ;


 int __get_lock (int *) ;
 int ll_pthread_mutex_init (int *,int const*) ;
 int try_init_preload () ;

int pthread_mutex_init(pthread_mutex_t *mutex,
   const pthread_mutexattr_t *attr)
{
 int r;
 try_init_preload();

 r = ll_pthread_mutex_init(mutex, attr);
 if (r == 0)





  __get_lock(mutex);

 return r;
}
