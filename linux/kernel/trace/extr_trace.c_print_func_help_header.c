
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_buffer {int dummy; } ;
struct seq_file {int dummy; } ;


 unsigned int TRACE_ITER_RECORD_TGID ;
 int print_event_info (struct trace_buffer*,struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static void print_func_help_header(struct trace_buffer *buf, struct seq_file *m,
       unsigned int flags)
{
 bool tgid = flags & TRACE_ITER_RECORD_TGID;

 print_event_info(buf, m);

 seq_printf(m, "#           TASK-PID   %s  CPU#   TIMESTAMP  FUNCTION\n", tgid ? "TGID     " : "");
 seq_printf(m, "#              | |     %s    |       |         |\n", tgid ? "  |      " : "");
}
