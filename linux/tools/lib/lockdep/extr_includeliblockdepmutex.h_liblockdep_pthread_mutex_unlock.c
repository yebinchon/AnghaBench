
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int dep_map; } ;
typedef TYPE_1__ liblockdep_pthread_mutex_t ;


 scalar_t__ _RET_IP_ ;
 int lock_release (int *,int ,unsigned long) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline int liblockdep_pthread_mutex_unlock(liblockdep_pthread_mutex_t *lock)
{
 lock_release(&lock->dep_map, 0, (unsigned long)_RET_IP_);
 return pthread_mutex_unlock(&lock->mutex);
}
