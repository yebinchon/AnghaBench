
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int comm; } ;
struct lockdep_map {int dummy; } ;


 int debug_locks_off () ;
 scalar_t__ debug_locks_silent ;
 int dump_stack () ;
 int lockdep_print_held_locks (struct task_struct*) ;
 int pr_cont (char*) ;
 int pr_warn (char*,...) ;
 int print_ip_sym (unsigned long) ;
 int print_kernel_ident () ;
 int print_lockdep_cache (struct lockdep_map*) ;
 int task_pid_nr (struct task_struct*) ;

__attribute__((used)) static void print_unlock_imbalance_bug(struct task_struct *curr,
           struct lockdep_map *lock,
           unsigned long ip)
{
 if (!debug_locks_off())
  return;
 if (debug_locks_silent)
  return;

 pr_warn("\n");
 pr_warn("=====================================\n");
 pr_warn("WARNING: bad unlock balance detected!\n");
 print_kernel_ident();
 pr_warn("-------------------------------------\n");
 pr_warn("%s/%d is trying to release lock (",
  curr->comm, task_pid_nr(curr));
 print_lockdep_cache(lock);
 pr_cont(") at:\n");
 print_ip_sym(ip);
 pr_warn("but there are no more locks to release!\n");
 pr_warn("\nother info that might help us debug this:\n");
 lockdep_print_held_locks(curr);

 pr_warn("\nstack backtrace:\n");
 dump_stack();
}
