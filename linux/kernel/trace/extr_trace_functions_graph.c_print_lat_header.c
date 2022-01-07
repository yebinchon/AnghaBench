
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;


 int TRACE_GRAPH_PRINT_ABS_TIME ;
 int TRACE_GRAPH_PRINT_CPU ;
 int TRACE_GRAPH_PRINT_PROC ;
 int TRACE_GRAPH_PRINT_REL_TIME ;
 int seq_printf (struct seq_file*,char*,int,char const*) ;

__attribute__((used)) static void print_lat_header(struct seq_file *s, u32 flags)
{
 static const char spaces[] = "                "
  "    "
  "                 ";
 int size = 0;

 if (flags & TRACE_GRAPH_PRINT_ABS_TIME)
  size += 16;
 if (flags & TRACE_GRAPH_PRINT_REL_TIME)
  size += 16;
 if (flags & TRACE_GRAPH_PRINT_CPU)
  size += 4;
 if (flags & TRACE_GRAPH_PRINT_PROC)
  size += 17;

 seq_printf(s, "#%.*s  _-----=> irqs-off        \n", size, spaces);
 seq_printf(s, "#%.*s / _----=> need-resched    \n", size, spaces);
 seq_printf(s, "#%.*s| / _---=> hardirq/softirq \n", size, spaces);
 seq_printf(s, "#%.*s|| / _--=> preempt-depth   \n", size, spaces);
 seq_printf(s, "#%.*s||| /                      \n", size, spaces);
}
