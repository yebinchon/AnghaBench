
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_barrier_t ;


 int pthread_barrier_destroy (int *) ;
 int pthread_barrier_init (int *,int *,int) ;
 int pthread_barrier_wait (int *) ;

int main(void)
{
 pthread_barrier_t barrier;

 pthread_barrier_init(&barrier, ((void*)0), 1);
 pthread_barrier_wait(&barrier);
 return pthread_barrier_destroy(&barrier);
}
