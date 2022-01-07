
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 struct task_struct* current ;
 int debug_locks ;
 int dump_stack () ;
 int lockdep_print_held_locks (struct task_struct*) ;
 int pr_warn (char*,...) ;
 int print_kernel_ident () ;
 int rcu_is_watching () ;
 int rcu_lockdep_current_cpu_online () ;
 int rcu_scheduler_active ;

void lockdep_rcu_suspicious(const char *file, const int line, const char *s)
{
 struct task_struct *curr = current;


 pr_warn("\n");
 pr_warn("=============================\n");
 pr_warn("WARNING: suspicious RCU usage\n");
 print_kernel_ident();
 pr_warn("-----------------------------\n");
 pr_warn("%s:%d %s!\n", file, line, s);
 pr_warn("\nother info that might help us debug this:\n\n");
 pr_warn("\n%srcu_scheduler_active = %d, debug_locks = %d\n",
        !rcu_lockdep_current_cpu_online()
   ? "RCU used illegally from offline CPU!\n"
   : !rcu_is_watching()
    ? "RCU used illegally from idle CPU!\n"
    : "",
        rcu_scheduler_active, debug_locks);
 if (!rcu_is_watching())
  pr_warn("RCU used illegally from extended quiescent state!\n");

 lockdep_print_held_locks(curr);
 pr_warn("\nstack backtrace:\n");
 dump_stack();
}
