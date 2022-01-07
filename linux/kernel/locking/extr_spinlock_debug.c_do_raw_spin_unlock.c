
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int raw_lock; } ;
typedef TYPE_1__ raw_spinlock_t ;


 int arch_spin_unlock (int *) ;
 int debug_spin_unlock (TYPE_1__*) ;
 int mmiowb_spin_unlock () ;

void do_raw_spin_unlock(raw_spinlock_t *lock)
{
 mmiowb_spin_unlock();
 debug_spin_unlock(lock);
 arch_spin_unlock(&lock->raw_lock);
}
