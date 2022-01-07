
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int comm; } ;
struct held_lock {TYPE_1__* nest_lock; } ;
struct TYPE_2__ {int name; } ;


 int debug_locks_off () ;
 scalar_t__ debug_locks_silent ;
 int dump_stack () ;
 int lockdep_print_held_locks (struct task_struct*) ;
 int pr_warn (char*,...) ;
 int print_kernel_ident () ;
 int print_lock (struct held_lock*) ;
 int task_pid_nr (struct task_struct*) ;

__attribute__((used)) static void
print_lock_nested_lock_not_held(struct task_struct *curr,
    struct held_lock *hlock,
    unsigned long ip)
{
 if (!debug_locks_off())
  return;
 if (debug_locks_silent)
  return;

 pr_warn("\n");
 pr_warn("==================================\n");
 pr_warn("WARNING: Nested lock was not taken\n");
 print_kernel_ident();
 pr_warn("----------------------------------\n");

 pr_warn("%s/%d is trying to lock:\n", curr->comm, task_pid_nr(curr));
 print_lock(hlock);

 pr_warn("\nbut this task is not holding:\n");
 pr_warn("%s\n", hlock->nest_lock->name);

 pr_warn("\nstack backtrace:\n");
 dump_stack();

 pr_warn("\nother info that might help us debug this:\n");
 lockdep_print_held_locks(curr);

 pr_warn("\nstack backtrace:\n");
 dump_stack();
}
