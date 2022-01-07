
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lockdep_depth; } ;


 TYPE_1__* current ;
 int print_held_locks_bug () ;
 scalar_t__ unlikely (int) ;

void debug_check_no_locks_held(void)
{
 if (unlikely(current->lockdep_depth > 0))
  print_held_locks_bug();
}
