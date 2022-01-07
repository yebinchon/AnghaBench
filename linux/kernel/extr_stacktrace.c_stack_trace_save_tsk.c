
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct stack_trace {unsigned long* entries; unsigned int max_entries; unsigned int skip; unsigned int nr_entries; } ;


 struct task_struct* current ;
 int save_stack_trace_tsk (struct task_struct*,struct stack_trace*) ;

unsigned int stack_trace_save_tsk(struct task_struct *task,
      unsigned long *store, unsigned int size,
      unsigned int skipnr)
{
 struct stack_trace trace = {
  .entries = store,
  .max_entries = size,

  .skip = skipnr + !!(current == task),
 };

 save_stack_trace_tsk(task, &trace);
 return trace.nr_entries;
}
