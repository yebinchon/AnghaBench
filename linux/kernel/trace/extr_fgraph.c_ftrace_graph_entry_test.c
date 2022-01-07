
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_graph_ent {int func; } ;


 int __ftrace_graph_entry (struct ftrace_graph_ent*) ;
 int ftrace_ops_test (int *,int ,int *) ;
 int global_ops ;

__attribute__((used)) static int ftrace_graph_entry_test(struct ftrace_graph_ent *trace)
{
 if (!ftrace_ops_test(&global_ops, trace->func, ((void*)0)))
  return 0;
 return __ftrace_graph_entry(trace);
}
