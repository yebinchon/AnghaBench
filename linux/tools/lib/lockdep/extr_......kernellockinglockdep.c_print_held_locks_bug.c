
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int comm; } ;


 TYPE_1__* current ;
 int debug_locks_off () ;
 scalar_t__ debug_locks_silent ;
 int dump_stack () ;
 int lockdep_print_held_locks (TYPE_1__*) ;
 int pr_warn (char*,...) ;
 int print_kernel_ident () ;
 int task_pid_nr (TYPE_1__*) ;

__attribute__((used)) static void print_held_locks_bug(void)
{
 if (!debug_locks_off())
  return;
 if (debug_locks_silent)
  return;

 pr_warn("\n");
 pr_warn("====================================\n");
 pr_warn("WARNING: %s/%d still has locks held!\n",
        current->comm, task_pid_nr(current));
 print_kernel_ident();
 pr_warn("------------------------------------\n");
 lockdep_print_held_locks(current);
 pr_warn("\nstack backtrace:\n");
 dump_stack();
}
