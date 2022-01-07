
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kill_ftrace_graph ;

bool ftrace_graph_is_dead(void)
{
 return kill_ftrace_graph;
}
