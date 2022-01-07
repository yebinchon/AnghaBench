
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trace_array {int trace_flags; } ;
struct seq_file {int dummy; } ;


 int TRACE_GRAPH_PRINT_ABS_TIME ;
 int TRACE_GRAPH_PRINT_CPU ;
 int TRACE_GRAPH_PRINT_DURATION ;
 int TRACE_GRAPH_PRINT_PROC ;
 int TRACE_GRAPH_PRINT_REL_TIME ;
 int TRACE_ITER_LATENCY_FMT ;
 int print_lat_header (struct seq_file*,int) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void __print_graph_headers_flags(struct trace_array *tr,
     struct seq_file *s, u32 flags)
{
 int lat = tr->trace_flags & TRACE_ITER_LATENCY_FMT;

 if (lat)
  print_lat_header(s, flags);


 seq_putc(s, '#');
 if (flags & TRACE_GRAPH_PRINT_ABS_TIME)
  seq_puts(s, "     TIME       ");
 if (flags & TRACE_GRAPH_PRINT_REL_TIME)
  seq_puts(s, "   REL TIME     ");
 if (flags & TRACE_GRAPH_PRINT_CPU)
  seq_puts(s, " CPU");
 if (flags & TRACE_GRAPH_PRINT_PROC)
  seq_puts(s, "  TASK/PID       ");
 if (lat)
  seq_puts(s, "||||   ");
 if (flags & TRACE_GRAPH_PRINT_DURATION)
  seq_puts(s, "  DURATION   ");
 seq_puts(s, "               FUNCTION CALLS\n");


 seq_putc(s, '#');
 if (flags & TRACE_GRAPH_PRINT_ABS_TIME)
  seq_puts(s, "      |         ");
 if (flags & TRACE_GRAPH_PRINT_REL_TIME)
  seq_puts(s, "      |         ");
 if (flags & TRACE_GRAPH_PRINT_CPU)
  seq_puts(s, " |  ");
 if (flags & TRACE_GRAPH_PRINT_PROC)
  seq_puts(s, "   |    |        ");
 if (lat)
  seq_puts(s, "||||   ");
 if (flags & TRACE_GRAPH_PRINT_DURATION)
  seq_puts(s, "   |   |      ");
 seq_puts(s, "               |   |   |   |\n");
}
