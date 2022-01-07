
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int ) ;
 int task_pid_vnr (void*) ;

__attribute__((used)) static int cgroup_procs_show(struct seq_file *s, void *v)
{
 seq_printf(s, "%d\n", task_pid_vnr(v));
 return 0;
}
