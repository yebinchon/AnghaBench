
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int raw_lock; } ;
typedef TYPE_1__ raw_spinlock_t ;


 int arch_spin_lock (int *) ;
 int debug_spin_lock_after (TYPE_1__*) ;
 int debug_spin_lock_before (TYPE_1__*) ;
 int mmiowb_spin_lock () ;

void do_raw_spin_lock(raw_spinlock_t *lock)
{
 debug_spin_lock_before(lock);
 arch_spin_lock(&lock->raw_lock);
 mmiowb_spin_lock();
 debug_spin_lock_after(lock);
}
