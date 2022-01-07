
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kill_ftrace_graph ;

void ftrace_graph_stop(void)
{
 kill_ftrace_graph = 1;
}
