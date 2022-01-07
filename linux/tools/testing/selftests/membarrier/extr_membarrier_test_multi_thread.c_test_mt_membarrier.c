
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int test_membarrier_fail () ;
 int test_membarrier_success () ;
 int test_membarrier_thread ;
 int test_membarrier_thread_cond ;
 int test_membarrier_thread_mutex ;
 int thread_quit ;
 int thread_ready ;

__attribute__((used)) static int test_mt_membarrier(void)
{
 int i;
 pthread_t test_thread;

 pthread_create(&test_thread, ((void*)0),
         test_membarrier_thread, ((void*)0));

 pthread_mutex_lock(&test_membarrier_thread_mutex);
 while (!thread_ready)
  pthread_cond_wait(&test_membarrier_thread_cond,
      &test_membarrier_thread_mutex);
 pthread_mutex_unlock(&test_membarrier_thread_mutex);

 test_membarrier_fail();

 test_membarrier_success();

 pthread_mutex_lock(&test_membarrier_thread_mutex);
 thread_quit = 1;
 pthread_cond_broadcast(&test_membarrier_thread_cond);
 pthread_mutex_unlock(&test_membarrier_thread_mutex);

 pthread_join(test_thread, ((void*)0));

 return 0;
}
