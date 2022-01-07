
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qrwlock {int wait_lock; int cnts; } ;


 int VAL ;
 int _QR_BIAS ;
 int _QW_LOCKED ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int atomic_add (int ,int *) ;
 int atomic_cond_read_acquire (int *,int) ;
 int atomic_sub (int ,int *) ;
 int in_interrupt () ;
 scalar_t__ unlikely (int ) ;

void queued_read_lock_slowpath(struct qrwlock *lock)
{



 if (unlikely(in_interrupt())) {






  atomic_cond_read_acquire(&lock->cnts, !(VAL & _QW_LOCKED));
  return;
 }
 atomic_sub(_QR_BIAS, &lock->cnts);




 arch_spin_lock(&lock->wait_lock);
 atomic_add(_QR_BIAS, &lock->cnts);






 atomic_cond_read_acquire(&lock->cnts, !(VAL & _QW_LOCKED));




 arch_spin_unlock(&lock->wait_lock);
}
