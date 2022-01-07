
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int cgroup_sane_behavior_show(struct seq_file *seq, void *v)
{
 seq_puts(seq, "0\n");
 return 0;
}
