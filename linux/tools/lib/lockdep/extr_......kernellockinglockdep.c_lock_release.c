
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lockdep_map {int dummy; } ;
struct TYPE_3__ {int lockdep_recursion; } ;


 scalar_t__ __lock_release (struct lockdep_map*,unsigned long) ;
 int check_chain_key (TYPE_1__*) ;
 int check_flags (unsigned long) ;
 TYPE_1__* current ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 int trace_lock_release (struct lockdep_map*,unsigned long) ;
 scalar_t__ unlikely (int) ;

void lock_release(struct lockdep_map *lock, int nested,
     unsigned long ip)
{
 unsigned long flags;

 if (unlikely(current->lockdep_recursion))
  return;

 raw_local_irq_save(flags);
 check_flags(flags);
 current->lockdep_recursion = 1;
 trace_lock_release(lock, ip);
 if (__lock_release(lock, ip))
  check_chain_key(current);
 current->lockdep_recursion = 0;
 raw_local_irq_restore(flags);
}
