
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trace_seq {int dummy; } ;
struct trace_array {int trace_flags; } ;





 int TRACE_GRAPH_PRINT_DURATION ;
 int TRACE_GRAPH_PRINT_FILL_MASK ;
 int TRACE_GRAPH_PRINT_OVERHEAD ;
 int TRACE_ITER_CONTEXT_INFO ;
 int trace_find_mark (unsigned long long) ;
 int trace_print_graph_duration (unsigned long long,struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,int ) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

__attribute__((used)) static void
print_graph_duration(struct trace_array *tr, unsigned long long duration,
       struct trace_seq *s, u32 flags)
{
 if (!(flags & TRACE_GRAPH_PRINT_DURATION) ||
     !(tr->trace_flags & TRACE_ITER_CONTEXT_INFO))
  return;


 switch (flags & TRACE_GRAPH_PRINT_FILL_MASK) {
 case 129:
  trace_seq_puts(s, "              |  ");
  return;
 case 128:
  trace_seq_puts(s, "  ");
  return;
 case 130:
  trace_seq_puts(s, " |");
  return;
 }


 if (flags & TRACE_GRAPH_PRINT_OVERHEAD)
  trace_seq_printf(s, "%c ", trace_find_mark(duration));
 else
  trace_seq_puts(s, "  ");

 trace_print_graph_duration(duration, s);
 trace_seq_puts(s, "|  ");
}
