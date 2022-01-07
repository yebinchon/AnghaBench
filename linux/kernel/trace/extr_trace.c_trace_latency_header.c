
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int iter_flags; struct trace_array* tr; } ;
struct trace_array {int trace_flags; } ;
struct seq_file {struct trace_iterator* private; } ;


 int TRACE_FILE_LAT_FMT ;
 int TRACE_ITER_VERBOSE ;
 int print_lat_help_header (struct seq_file*) ;
 int print_trace_header (struct seq_file*,struct trace_iterator*) ;
 scalar_t__ trace_empty (struct trace_iterator*) ;

void trace_latency_header(struct seq_file *m)
{
 struct trace_iterator *iter = m->private;
 struct trace_array *tr = iter->tr;


 if (trace_empty(iter))
  return;

 if (iter->iter_flags & TRACE_FILE_LAT_FMT)
  print_trace_header(m, iter);

 if (!(tr->trace_flags & TRACE_ITER_VERBOSE))
  print_lat_help_header(m);
}
