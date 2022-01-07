
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int s64 ;
typedef int raw_spinlock_t ;
struct TYPE_4__ {int counter; } ;
typedef TYPE_1__ atomic64_t ;


 int * lock_addr (TYPE_1__*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void atomic64_set(atomic64_t *v, s64 i)
{
 unsigned long flags;
 raw_spinlock_t *lock = lock_addr(v);

 raw_spin_lock_irqsave(lock, flags);
 v->counter = i;
 raw_spin_unlock_irqrestore(lock, flags);
}
