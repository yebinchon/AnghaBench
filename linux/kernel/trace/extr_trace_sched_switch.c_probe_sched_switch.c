
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int RECORD_CMDLINE ;
 int RECORD_TGID ;
 int sched_cmdline_ref ;
 int sched_tgid_ref ;
 int tracing_record_taskinfo_sched_switch (struct task_struct*,struct task_struct*,int) ;

__attribute__((used)) static void
probe_sched_switch(void *ignore, bool preempt,
     struct task_struct *prev, struct task_struct *next)
{
 int flags;

 flags = (RECORD_TGID * !!sched_tgid_ref) +
  (RECORD_CMDLINE * !!sched_cmdline_ref);

 if (!flags)
  return;
 tracing_record_taskinfo_sched_switch(prev, next, flags);
}
