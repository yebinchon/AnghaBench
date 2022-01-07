
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int TASK_COMM_LEN ;
 int __trace_find_cmdline (unsigned int,char*) ;
 int seq_printf (struct seq_file*,char*,unsigned int,char*) ;

__attribute__((used)) static int saved_cmdlines_show(struct seq_file *m, void *v)
{
 char buf[TASK_COMM_LEN];
 unsigned int *pid = v;

 __trace_find_cmdline(*pid, buf);
 seq_printf(m, "%d %s\n", *pid, buf);
 return 0;
}
