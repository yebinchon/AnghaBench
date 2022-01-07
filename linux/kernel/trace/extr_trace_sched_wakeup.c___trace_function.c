
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 scalar_t__ is_graph (struct trace_array*) ;
 int trace_function (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ;
 int trace_graph_function (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ;

__attribute__((used)) static void
__trace_function(struct trace_array *tr,
   unsigned long ip, unsigned long parent_ip,
   unsigned long flags, int pc)
{
 if (is_graph(tr))
  trace_graph_function(tr, ip, parent_ip, flags, pc);
 else
  trace_function(tr, ip, parent_ip, flags, pc);
}
