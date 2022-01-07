
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_buffer {int dummy; } ;
struct seq_file {int dummy; } ;


 unsigned int TRACE_ITER_RECORD_TGID ;
 int print_event_info (struct trace_buffer*,struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,int,char const*) ;

__attribute__((used)) static void print_func_help_header_irq(struct trace_buffer *buf, struct seq_file *m,
           unsigned int flags)
{
 bool tgid = flags & TRACE_ITER_RECORD_TGID;
 const char *space = "          ";
 int prec = tgid ? 10 : 2;

 print_event_info(buf, m);

 seq_printf(m, "#                          %.*s  _-----=> irqs-off\n", prec, space);
 seq_printf(m, "#                          %.*s / _----=> need-resched\n", prec, space);
 seq_printf(m, "#                          %.*s| / _---=> hardirq/softirq\n", prec, space);
 seq_printf(m, "#                          %.*s|| / _--=> preempt-depth\n", prec, space);
 seq_printf(m, "#                          %.*s||| /     delay\n", prec, space);
 seq_printf(m, "#           TASK-PID %.*sCPU#  ||||    TIMESTAMP  FUNCTION\n", prec, "   TGID   ");
 seq_printf(m, "#              | |   %.*s  |   ||||       |         |\n", prec, "     |    ");
}
