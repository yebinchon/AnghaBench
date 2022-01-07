
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int key; int dep_map; } ;
typedef TYPE_1__ liblockdep_pthread_mutex_t ;


 int lockdep_reset_lock (int *) ;
 int lockdep_unregister_key (int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static inline int liblockdep_pthread_mutex_destroy(liblockdep_pthread_mutex_t *lock)
{
 lockdep_reset_lock(&lock->dep_map);
 lockdep_unregister_key(&lock->key);
 return pthread_mutex_destroy(&lock->mutex);
}
