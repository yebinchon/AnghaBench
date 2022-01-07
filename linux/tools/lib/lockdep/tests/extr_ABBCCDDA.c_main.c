
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int LOCK_UNLOCK_2 (int ,int ) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init (int *,int *) ;

void main(void)
{
 pthread_mutex_t a, b, c, d;

 pthread_mutex_init(&a, ((void*)0));
 pthread_mutex_init(&b, ((void*)0));
 pthread_mutex_init(&c, ((void*)0));
 pthread_mutex_init(&d, ((void*)0));

 LOCK_UNLOCK_2(a, b);
 LOCK_UNLOCK_2(b, c);
 LOCK_UNLOCK_2(c, d);
 LOCK_UNLOCK_2(d, a);

 pthread_mutex_destroy(&d);
 pthread_mutex_destroy(&c);
 pthread_mutex_destroy(&b);
 pthread_mutex_destroy(&a);
}
