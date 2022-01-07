
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trace_iterator {struct trace_array* tr; } ;
struct trace_array {int trace_flags; } ;
struct seq_file {struct trace_iterator* private; } ;


 int TRACE_ITER_CONTEXT_INFO ;
 int TRACE_ITER_LATENCY_FMT ;
 int __print_graph_headers_flags (struct trace_array*,struct seq_file*,int ) ;
 int print_trace_header (struct seq_file*,struct trace_iterator*) ;
 scalar_t__ trace_empty (struct trace_iterator*) ;

void print_graph_headers_flags(struct seq_file *s, u32 flags)
{
 struct trace_iterator *iter = s->private;
 struct trace_array *tr = iter->tr;

 if (!(tr->trace_flags & TRACE_ITER_CONTEXT_INFO))
  return;

 if (tr->trace_flags & TRACE_ITER_LATENCY_FMT) {

  if (trace_empty(iter))
   return;

  print_trace_header(s, iter);
 }

 __print_graph_headers_flags(tr, s, flags);
}
