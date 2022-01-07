
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,unsigned long) ;

int trace_pid_show(struct seq_file *m, void *v)
{
 unsigned long pid = (unsigned long)v - 1;

 seq_printf(m, "%lu\n", pid);
 return 0;
}
