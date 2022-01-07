
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct thread_stack {scalar_t__ trace_nr; } ;
struct thread {int dummy; } ;


 int __thread_stack__flush (struct thread*,struct thread_stack*) ;
 struct thread_stack* thread__stack (struct thread*,int) ;

void thread_stack__set_trace_nr(struct thread *thread, int cpu, u64 trace_nr)
{
 struct thread_stack *ts = thread__stack(thread, cpu);

 if (!ts)
  return;

 if (trace_nr != ts->trace_nr) {
  if (ts->trace_nr)
   __thread_stack__flush(thread, ts);
  ts->trace_nr = trace_nr;
 }
}
