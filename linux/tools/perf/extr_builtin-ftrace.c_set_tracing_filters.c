
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_ftrace {int nograph_funcs; int graph_funcs; int notrace; int filters; } ;


 int __set_tracing_filter (char*,int *) ;

__attribute__((used)) static int set_tracing_filters(struct perf_ftrace *ftrace)
{
 int ret;

 ret = __set_tracing_filter("set_ftrace_filter", &ftrace->filters);
 if (ret < 0)
  return ret;

 ret = __set_tracing_filter("set_ftrace_notrace", &ftrace->notrace);
 if (ret < 0)
  return ret;

 ret = __set_tracing_filter("set_graph_function", &ftrace->graph_funcs);
 if (ret < 0)
  return ret;


 __set_tracing_filter("set_graph_notrace", &ftrace->nograph_funcs);

 return ret;
}
