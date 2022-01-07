
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PTHREAD_BARRIER_SERIAL_THREAD ;
 int a ;
 int b ;
 int bar ;
 int pthread_barrier_destroy (int *) ;
 scalar_t__ pthread_barrier_wait (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void *ba_lock(void *arg)
{
 int ret, i;

 pthread_mutex_lock(&b);

 if (pthread_barrier_wait(&bar) == PTHREAD_BARRIER_SERIAL_THREAD)
  pthread_barrier_destroy(&bar);

 pthread_mutex_lock(&a);

 pthread_mutex_unlock(&a);
 pthread_mutex_unlock(&b);
}
