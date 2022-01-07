
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void print_lat_help_header(struct seq_file *m)
{
 seq_puts(m, "#                  _------=> CPU#            \n"
      "#                 / _-----=> irqs-off        \n"
      "#                | / _----=> need-resched    \n"
      "#                || / _---=> hardirq/softirq \n"
      "#                ||| / _--=> preempt-depth   \n"
      "#                |||| /     delay            \n"
      "#  cmd     pid   ||||| time  |   caller      \n"
      "#     \\   /      |||||  \\    |   /         \n");
}
