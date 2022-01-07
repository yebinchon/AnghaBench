
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int ftrace_is_dead () ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void test_ftrace_alive(struct seq_file *m)
{
 if (!ftrace_is_dead())
  return;
 seq_puts(m, "# WARNING: FUNCTION TRACING IS CORRUPTED\n"
      "#          MAY BE MISSING FUNCTION EVENTS\n");
}
