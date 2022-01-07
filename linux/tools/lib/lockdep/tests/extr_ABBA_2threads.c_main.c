
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 scalar_t__ PTHREAD_BARRIER_SERIAL_THREAD ;
 int a ;
 int b ;
 int ba_lock ;
 int bar ;
 int fprintf (int ,char*) ;
 int pthread_barrier_destroy (int *) ;
 int pthread_barrier_init (int *,int *,int) ;
 scalar_t__ pthread_barrier_wait (int *) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stderr ;

int main(void)
{
 pthread_t t;

 pthread_barrier_init(&bar, ((void*)0), 2);

 if (pthread_create(&t, ((void*)0), ba_lock, ((void*)0))) {
  fprintf(stderr, "pthread_create() failed\n");
  return 1;
 }
 pthread_mutex_lock(&a);

 if (pthread_barrier_wait(&bar) == PTHREAD_BARRIER_SERIAL_THREAD)
  pthread_barrier_destroy(&bar);

 pthread_mutex_lock(&b);

 pthread_mutex_unlock(&b);
 pthread_mutex_unlock(&a);

 pthread_join(t, ((void*)0));

 return 0;
}
