
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 void* __cgroup_procs_start (struct seq_file*,int *,int ) ;

__attribute__((used)) static void *cgroup_threads_start(struct seq_file *s, loff_t *pos)
{
 return __cgroup_procs_start(s, pos, 0);
}
