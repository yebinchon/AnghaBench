
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qrwlock {int wait_lock; int cnts; } ;


 scalar_t__ VAL ;
 int _QW_LOCKED ;
 scalar_t__ _QW_WAITING ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 int atomic_add (scalar_t__,int *) ;
 scalar_t__ atomic_cmpxchg_acquire (int *,int ,int ) ;
 scalar_t__ atomic_cmpxchg_relaxed (int *,scalar_t__,int ) ;
 int atomic_cond_read_acquire (int *,int) ;
 int atomic_read (int *) ;

void queued_write_lock_slowpath(struct qrwlock *lock)
{

 arch_spin_lock(&lock->wait_lock);


 if (!atomic_read(&lock->cnts) &&
     (atomic_cmpxchg_acquire(&lock->cnts, 0, _QW_LOCKED) == 0))
  goto unlock;


 atomic_add(_QW_WAITING, &lock->cnts);


 do {
  atomic_cond_read_acquire(&lock->cnts, VAL == _QW_WAITING);
 } while (atomic_cmpxchg_relaxed(&lock->cnts, _QW_WAITING,
     _QW_LOCKED) != _QW_WAITING);
unlock:
 arch_spin_unlock(&lock->wait_lock);
}
