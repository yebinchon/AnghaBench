
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct trace_array {int dummy; } ;
struct ftrace_graph_ret {unsigned long func; int rettime; int calltime; int depth; } ;
struct ftrace_graph_ent {unsigned long func; int depth; } ;


 int __trace_graph_entry (struct trace_array*,struct ftrace_graph_ent*,unsigned long,int) ;
 int __trace_graph_return (struct trace_array*,struct ftrace_graph_ret*,unsigned long,int) ;
 int trace_clock_local () ;

__attribute__((used)) static void
__trace_graph_function(struct trace_array *tr,
  unsigned long ip, unsigned long flags, int pc)
{
 u64 time = trace_clock_local();
 struct ftrace_graph_ent ent = {
  .func = ip,
  .depth = 0,
 };
 struct ftrace_graph_ret ret = {
  .func = ip,
  .depth = 0,
  .calltime = time,
  .rettime = time,
 };

 __trace_graph_entry(tr, &ent, flags, pc);
 __trace_graph_return(tr, &ret, flags, pc);
}
