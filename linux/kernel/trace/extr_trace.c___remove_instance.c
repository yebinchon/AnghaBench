
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_array {int nr_topts; struct trace_array* name; int tracing_cpumask; struct trace_array* topts; int dir; int list; TYPE_1__* current_trace; scalar_t__ ref; } ;
struct TYPE_2__ {scalar_t__ ref; } ;


 int EBUSY ;
 int TRACE_FLAGS_MAX_SIZE ;
 int ZEROED_TRACE_FLAGS ;
 int clear_ftrace_function_probes (struct trace_array*) ;
 int event_trace_del_tracer (struct trace_array*) ;
 int free_cpumask_var (int ) ;
 int free_trace_buffers (struct trace_array*) ;
 int ftrace_clear_pids (struct trace_array*) ;
 int ftrace_destroy_function_files (struct trace_array*) ;
 int kfree (struct trace_array*) ;
 int list_del (int *) ;
 int set_tracer_flag (struct trace_array*,int,int ) ;
 int tracefs_remove_recursive (int ) ;
 int tracing_set_nop (struct trace_array*) ;

__attribute__((used)) static int __remove_instance(struct trace_array *tr)
{
 int i;

 if (tr->ref || (tr->current_trace && tr->current_trace->ref))
  return -EBUSY;

 list_del(&tr->list);


 for (i = 0; i < TRACE_FLAGS_MAX_SIZE; i++) {
  if ((1 << i) & ZEROED_TRACE_FLAGS)
   set_tracer_flag(tr, 1 << i, 0);
 }

 tracing_set_nop(tr);
 clear_ftrace_function_probes(tr);
 event_trace_del_tracer(tr);
 ftrace_clear_pids(tr);
 ftrace_destroy_function_files(tr);
 tracefs_remove_recursive(tr->dir);
 free_trace_buffers(tr);

 for (i = 0; i < tr->nr_topts; i++) {
  kfree(tr->topts[i].topts);
 }
 kfree(tr->topts);

 free_cpumask_var(tr->tracing_cpumask);
 kfree(tr->name);
 kfree(tr);
 tr = ((void*)0);

 return 0;
}
