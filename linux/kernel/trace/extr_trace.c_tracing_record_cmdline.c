
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int TRACE_RECORD_CMDLINE ;
 int tracing_record_taskinfo (struct task_struct*,int ) ;

void tracing_record_cmdline(struct task_struct *task)
{
 tracing_record_taskinfo(task, TRACE_RECORD_CMDLINE);
}
