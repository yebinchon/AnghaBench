
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lock_class_key {int dummy; } ;
struct TYPE_3__ {int owner_cpu; int owner; int magic; scalar_t__ raw_lock; int dep_map; } ;
typedef TYPE_1__ rwlock_t ;
typedef scalar_t__ arch_rwlock_t ;


 int RWLOCK_MAGIC ;
 int SPINLOCK_OWNER_INIT ;
 scalar_t__ __ARCH_RW_LOCK_UNLOCKED ;
 int debug_check_no_locks_freed (void*,int) ;
 int lockdep_init_map (int *,char const*,struct lock_class_key*,int ) ;

void __rwlock_init(rwlock_t *lock, const char *name,
     struct lock_class_key *key)
{







 lock->raw_lock = (arch_rwlock_t) __ARCH_RW_LOCK_UNLOCKED;
 lock->magic = RWLOCK_MAGIC;
 lock->owner = SPINLOCK_OWNER_INIT;
 lock->owner_cpu = -1;
}
