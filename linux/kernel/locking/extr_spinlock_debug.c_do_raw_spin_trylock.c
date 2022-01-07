
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int raw_lock; } ;
typedef TYPE_1__ raw_spinlock_t ;


 int SPIN_BUG_ON (int,TYPE_1__*,char*) ;
 int arch_spin_trylock (int *) ;
 int debug_spin_lock_after (TYPE_1__*) ;
 int mmiowb_spin_lock () ;

int do_raw_spin_trylock(raw_spinlock_t *lock)
{
 int ret = arch_spin_trylock(&lock->raw_lock);

 if (ret) {
  mmiowb_spin_lock();
  debug_spin_lock_after(lock);
 }




 SPIN_BUG_ON(!ret, lock, "trylock failure on UP");

 return ret;
}
