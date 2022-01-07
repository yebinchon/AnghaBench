
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_rwlock_t ;


 int pthread_rwlock_init (int *,int *) ;
 int pthread_rwlock_rdlock (int *) ;
 int pthread_rwlock_wrlock (int *) ;

void main(void)
{
 pthread_rwlock_t a, b;

 pthread_rwlock_init(&a, ((void*)0));
 pthread_rwlock_init(&b, ((void*)0));

 pthread_rwlock_wrlock(&a);
 pthread_rwlock_rdlock(&b);
 pthread_rwlock_wrlock(&a);
}
