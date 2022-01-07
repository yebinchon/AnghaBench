
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int test_membarrier_thread_cond ;
 int test_membarrier_thread_mutex ;
 int thread_quit ;
 int thread_ready ;

void *test_membarrier_thread(void *arg)
{
 pthread_mutex_lock(&test_membarrier_thread_mutex);
 thread_ready = 1;
 pthread_cond_broadcast(&test_membarrier_thread_cond);
 pthread_mutex_unlock(&test_membarrier_thread_mutex);

 pthread_mutex_lock(&test_membarrier_thread_mutex);
 while (!thread_quit)
  pthread_cond_wait(&test_membarrier_thread_cond,
      &test_membarrier_thread_mutex);
 pthread_mutex_unlock(&test_membarrier_thread_mutex);

 return ((void*)0);
}
