
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int __trace_graph_function (struct trace_array*,unsigned long,unsigned long,int) ;

void
trace_graph_function(struct trace_array *tr,
  unsigned long ip, unsigned long parent_ip,
  unsigned long flags, int pc)
{
 __trace_graph_function(tr, ip, flags, pc);
}
