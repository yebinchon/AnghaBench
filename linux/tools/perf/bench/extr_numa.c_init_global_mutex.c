
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutexattr_t ;
typedef int pthread_mutex_t ;


 int PTHREAD_PROCESS_SHARED ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_setpshared (int *,int ) ;

__attribute__((used)) static void init_global_mutex(pthread_mutex_t *mutex)
{
 pthread_mutexattr_t attr;

 pthread_mutexattr_init(&attr);
 pthread_mutexattr_setpshared(&attr, PTHREAD_PROCESS_SHARED);
 pthread_mutex_init(mutex, &attr);
}
