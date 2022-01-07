
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pin_cookie {int dummy; } ;
struct lockdep_map {int dummy; } ;
struct TYPE_2__ {int lockdep_recursion; } ;


 int __lock_unpin_lock (struct lockdep_map*,struct pin_cookie) ;
 int check_flags (unsigned long) ;
 TYPE_1__* current ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 scalar_t__ unlikely (int) ;

void lock_unpin_lock(struct lockdep_map *lock, struct pin_cookie cookie)
{
 unsigned long flags;

 if (unlikely(current->lockdep_recursion))
  return;

 raw_local_irq_save(flags);
 check_flags(flags);

 current->lockdep_recursion = 1;
 __lock_unpin_lock(lock, cookie);
 current->lockdep_recursion = 0;
 raw_local_irq_restore(flags);
}
