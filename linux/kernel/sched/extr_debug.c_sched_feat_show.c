
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int __SCHED_FEAT_NR ;
 int * sched_feat_names ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,char*) ;
 unsigned long sysctl_sched_features ;

__attribute__((used)) static int sched_feat_show(struct seq_file *m, void *v)
{
 int i;

 for (i = 0; i < __SCHED_FEAT_NR; i++) {
  if (!(sysctl_sched_features & (1UL << i)))
   seq_puts(m, "NO_");
  seq_printf(m, "%s ", sched_feat_names[i]);
 }
 seq_puts(m, "\n");

 return 0;
}
