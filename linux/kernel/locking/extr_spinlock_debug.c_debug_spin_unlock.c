
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ magic; scalar_t__ owner; int owner_cpu; } ;
typedef TYPE_1__ raw_spinlock_t ;


 scalar_t__ SPINLOCK_MAGIC ;
 scalar_t__ SPINLOCK_OWNER_INIT ;
 int SPIN_BUG_ON (int,TYPE_1__*,char*) ;
 scalar_t__ current ;
 int raw_smp_processor_id () ;
 int raw_spin_is_locked (TYPE_1__*) ;

__attribute__((used)) static inline void debug_spin_unlock(raw_spinlock_t *lock)
{
 SPIN_BUG_ON(lock->magic != SPINLOCK_MAGIC, lock, "bad magic");
 SPIN_BUG_ON(!raw_spin_is_locked(lock), lock, "already unlocked");
 SPIN_BUG_ON(lock->owner != current, lock, "wrong owner");
 SPIN_BUG_ON(lock->owner_cpu != raw_smp_processor_id(),
       lock, "wrong CPU");
 lock->owner = SPINLOCK_OWNER_INIT;
 lock->owner_cpu = -1;
}
