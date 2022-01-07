
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pin_cookie {int dummy; } ;
struct lockdep_map {int dummy; } ;
struct TYPE_2__ {int lockdep_recursion; } ;


 struct pin_cookie NIL_COOKIE ;
 struct pin_cookie __lock_pin_lock (struct lockdep_map*) ;
 int check_flags (unsigned long) ;
 TYPE_1__* current ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 scalar_t__ unlikely (int) ;

struct pin_cookie lock_pin_lock(struct lockdep_map *lock)
{
 struct pin_cookie cookie = NIL_COOKIE;
 unsigned long flags;

 if (unlikely(current->lockdep_recursion))
  return cookie;

 raw_local_irq_save(flags);
 check_flags(flags);

 current->lockdep_recursion = 1;
 cookie = __lock_pin_lock(lock);
 current->lockdep_recursion = 0;
 raw_local_irq_restore(flags);

 return cookie;
}
