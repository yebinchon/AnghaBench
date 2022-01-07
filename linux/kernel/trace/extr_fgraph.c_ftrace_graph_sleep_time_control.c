
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fgraph_sleep_time ;

void ftrace_graph_sleep_time_control(bool enable)
{
 fgraph_sleep_time = enable;
}
