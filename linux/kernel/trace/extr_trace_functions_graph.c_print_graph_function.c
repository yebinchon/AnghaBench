
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_iterator {int dummy; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_2__ {int val; } ;


 int print_graph_function_flags (struct trace_iterator*,int ) ;
 TYPE_1__ tracer_flags ;

__attribute__((used)) static enum print_line_t
print_graph_function(struct trace_iterator *iter)
{
 return print_graph_function_flags(iter, tracer_flags.val);
}
