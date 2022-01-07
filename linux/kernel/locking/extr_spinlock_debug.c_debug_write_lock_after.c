
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int owner; int owner_cpu; } ;
typedef TYPE_1__ rwlock_t ;


 int current ;
 int raw_smp_processor_id () ;

__attribute__((used)) static inline void debug_write_lock_after(rwlock_t *lock)
{
 lock->owner_cpu = raw_smp_processor_id();
 lock->owner = current;
}
