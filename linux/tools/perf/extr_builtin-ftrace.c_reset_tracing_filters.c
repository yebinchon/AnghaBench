
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_tracing_file (char*,char*) ;

__attribute__((used)) static void reset_tracing_filters(void)
{
 write_tracing_file("set_ftrace_filter", " ");
 write_tracing_file("set_ftrace_notrace", " ");
 write_tracing_file("set_graph_function", " ");
 write_tracing_file("set_graph_notrace", " ");
}
