
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lock_class_key {int dummy; } ;
typedef int pthread_mutexattr_t ;
struct TYPE_3__ {int mutex; int dep_map; } ;
typedef TYPE_1__ liblockdep_pthread_mutex_t ;


 int lockdep_init_map (int *,char const*,struct lock_class_key*,int ) ;
 int pthread_mutex_init (int *,int const*) ;

__attribute__((used)) static inline int __mutex_init(liblockdep_pthread_mutex_t *lock,
    const char *name,
    struct lock_class_key *key,
    const pthread_mutexattr_t *__mutexattr)
{
 lockdep_init_map(&lock->dep_map, name, key, 0);
 return pthread_mutex_init(&lock->mutex, __mutexattr);
}
