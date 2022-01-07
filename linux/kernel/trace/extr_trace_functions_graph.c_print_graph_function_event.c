
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int dummy; } ;
struct trace_event {int dummy; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int print_graph_function (struct trace_iterator*) ;

__attribute__((used)) static enum print_line_t
print_graph_function_event(struct trace_iterator *iter, int flags,
      struct trace_event *event)
{
 return print_graph_function(iter);
}
