
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 void* SEQ_START_TOKEN ;
 int print_disabled (struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,long,...) ;
 int* stack_trace_index ;
 int stack_trace_max_size ;
 long stack_trace_nr_entries ;
 int stack_tracer_enabled ;
 int trace_lookup_stack (struct seq_file*,long) ;

__attribute__((used)) static int t_show(struct seq_file *m, void *v)
{
 long i;
 int size;

 if (v == SEQ_START_TOKEN) {
  seq_printf(m, "        Depth    Size   Location"
      "    (%d entries)\n"
      "        -----    ----   --------\n",
      stack_trace_nr_entries);

  if (!stack_tracer_enabled && !stack_trace_max_size)
   print_disabled(m);

  return 0;
 }

 i = *(long *)v;

 if (i >= stack_trace_nr_entries)
  return 0;

 if (i + 1 == stack_trace_nr_entries)
  size = stack_trace_index[i];
 else
  size = stack_trace_index[i] - stack_trace_index[i+1];

 seq_printf(m, "%3ld) %8d   %5d   ", i, stack_trace_index[i], size);

 trace_lookup_stack(m, i);

 return 0;
}
