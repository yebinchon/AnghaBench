
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct trace_entry {int dummy; } ;


 int local_save_flags (unsigned long) ;
 int preempt_count () ;
 int tracing_generic_entry_update (struct trace_entry*,int ,unsigned long,int) ;

void perf_trace_buf_update(void *record, u16 type)
{
 struct trace_entry *entry = record;
 int pc = preempt_count();
 unsigned long flags;

 local_save_flags(flags);
 tracing_generic_entry_update(entry, type, flags, pc);
}
