
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int TRACE_RECORD_CMDLINE ;
 int TRACE_RECORD_TGID ;
 int __this_cpu_write (int ,int) ;
 scalar_t__ trace_save_cmdline (struct task_struct*) ;
 scalar_t__ trace_save_tgid (struct task_struct*) ;
 int trace_taskinfo_save ;
 scalar_t__ tracing_record_taskinfo_skip (int) ;

void tracing_record_taskinfo_sched_switch(struct task_struct *prev,
       struct task_struct *next, int flags)
{
 bool done;

 if (tracing_record_taskinfo_skip(flags))
  return;





 done = !(flags & TRACE_RECORD_CMDLINE) || trace_save_cmdline(prev);
 done &= !(flags & TRACE_RECORD_CMDLINE) || trace_save_cmdline(next);
 done &= !(flags & TRACE_RECORD_TGID) || trace_save_tgid(prev);
 done &= !(flags & TRACE_RECORD_TGID) || trace_save_tgid(next);


 if (!done)
  return;

 __this_cpu_write(trace_taskinfo_save, 0);
}
