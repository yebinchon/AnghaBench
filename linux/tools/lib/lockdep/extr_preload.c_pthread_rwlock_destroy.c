
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_rwlock_t ;


 int __del_lock (int ) ;
 int __get_lock (int *) ;
 int debug_check_no_locks_freed (int *,int) ;
 int ll_pthread_rwlock_destroy (int *) ;
 int try_init_preload () ;

int pthread_rwlock_destroy(pthread_rwlock_t *rwlock)
{
 try_init_preload();

 debug_check_no_locks_freed(rwlock, sizeof(*rwlock));
 __del_lock(__get_lock(rwlock));
 return ll_pthread_rwlock_destroy(rwlock);
}
