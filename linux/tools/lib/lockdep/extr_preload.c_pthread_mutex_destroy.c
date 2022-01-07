
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int __del_lock (int ) ;
 int __get_lock (int *) ;
 int debug_check_no_locks_freed (int *,int) ;
 int ll_pthread_mutex_destroy (int *) ;
 int try_init_preload () ;

int pthread_mutex_destroy(pthread_mutex_t *mutex)
{
 try_init_preload();






 debug_check_no_locks_freed(mutex, sizeof(*mutex));
 __del_lock(__get_lock(mutex));
 return ll_pthread_mutex_destroy(mutex);
}
