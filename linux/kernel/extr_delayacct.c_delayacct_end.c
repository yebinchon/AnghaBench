
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
typedef scalar_t__ s64 ;
typedef int raw_spinlock_t ;


 scalar_t__ ktime_get_ns () ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void delayacct_end(raw_spinlock_t *lock, u64 *start, u64 *total,
     u32 *count)
{
 s64 ns = ktime_get_ns() - *start;
 unsigned long flags;

 if (ns > 0) {
  raw_spin_lock_irqsave(lock, flags);
  *total += ns;
  (*count)++;
  raw_spin_unlock_irqrestore(lock, flags);
 }
}
