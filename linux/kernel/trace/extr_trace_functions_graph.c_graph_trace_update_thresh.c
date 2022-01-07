
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int graph_trace_init (struct trace_array*) ;
 int graph_trace_reset (struct trace_array*) ;

__attribute__((used)) static int graph_trace_update_thresh(struct trace_array *tr)
{
 graph_trace_reset(tr);
 return graph_trace_init(tr);
}
