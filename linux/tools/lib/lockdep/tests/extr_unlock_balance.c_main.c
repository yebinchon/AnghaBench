
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void main(void)
{
 pthread_mutex_t a;

 pthread_mutex_init(&a, ((void*)0));

 pthread_mutex_lock(&a);
 pthread_mutex_unlock(&a);
 pthread_mutex_unlock(&a);

 pthread_mutex_destroy(&a);
}
