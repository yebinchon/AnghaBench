
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int print_cpu (struct seq_file*,int) ;
 int sched_debug_header (struct seq_file*) ;

__attribute__((used)) static int sched_debug_show(struct seq_file *m, void *v)
{
 int cpu = (unsigned long)(v - 2);

 if (cpu != -1)
  print_cpu(m, cpu);
 else
  sched_debug_header(m);

 return 0;
}
