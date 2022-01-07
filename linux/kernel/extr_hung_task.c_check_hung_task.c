
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {unsigned long nvcsw; unsigned long nivcsw; int flags; unsigned long last_switch_count; unsigned long last_switch_time; int pid; int comm; } ;
struct TYPE_2__ {int version; int release; } ;


 unsigned long HZ ;
 int PF_FREEZER_SKIP ;
 int PF_FROZEN ;
 int console_verbose () ;
 int hung_task_call_panic ;
 int hung_task_show_lock ;
 TYPE_1__* init_utsname () ;
 unsigned long jiffies ;
 int pr_err (char*,...) ;
 int print_tainted () ;
 int sched_show_task (struct task_struct*) ;
 scalar_t__ strcspn (int ,char*) ;
 scalar_t__ sysctl_hung_task_panic ;
 scalar_t__ sysctl_hung_task_warnings ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 int touch_nmi_watchdog () ;
 int trace_sched_process_hang (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void check_hung_task(struct task_struct *t, unsigned long timeout)
{
 unsigned long switch_count = t->nvcsw + t->nivcsw;





 if (unlikely(t->flags & (PF_FROZEN | PF_FREEZER_SKIP)))
     return;






 if (unlikely(!switch_count))
  return;

 if (switch_count != t->last_switch_count) {
  t->last_switch_count = switch_count;
  t->last_switch_time = jiffies;
  return;
 }
 if (time_is_after_jiffies(t->last_switch_time + timeout * HZ))
  return;

 trace_sched_process_hang(t);

 if (sysctl_hung_task_panic) {
  console_verbose();
  hung_task_show_lock = 1;
  hung_task_call_panic = 1;
 }





 if (sysctl_hung_task_warnings) {
  if (sysctl_hung_task_warnings > 0)
   sysctl_hung_task_warnings--;
  pr_err("INFO: task %s:%d blocked for more than %ld seconds.\n",
         t->comm, t->pid, (jiffies - t->last_switch_time) / HZ);
  pr_err("      %s %s %.*s\n",
   print_tainted(), init_utsname()->release,
   (int)strcspn(init_utsname()->version, " "),
   init_utsname()->version);
  pr_err("\"echo 0 > /proc/sys/kernel/hung_task_timeout_secs\""
   " disables this message.\n");
  sched_show_task(t);
  hung_task_show_lock = 1;
 }

 touch_nmi_watchdog();
}
