
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int RECORD_CMDLINE ;
 int RECORD_TGID ;
 int current ;
 int sched_cmdline_ref ;
 int sched_tgid_ref ;
 int tracing_record_taskinfo (int ,int) ;

__attribute__((used)) static void
probe_sched_wakeup(void *ignore, struct task_struct *wakee)
{
 int flags;

 flags = (RECORD_TGID * !!sched_tgid_ref) +
  (RECORD_CMDLINE * !!sched_cmdline_ref);

 if (!flags)
  return;
 tracing_record_taskinfo(current, flags);
}
