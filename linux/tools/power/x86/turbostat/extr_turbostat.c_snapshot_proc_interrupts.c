
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_cpus; int max_cpu_num; } ;
typedef int FILE ;


 int * fopen_or_die (char*,char*) ;
 int fscanf (int *,char*,...) ;
 char getc (int *) ;
 int* irq_column_2_cpu ;
 int* irqs_per_cpu ;
 int rewind (int *) ;
 TYPE_1__ topo ;
 int warn (char*,int,int) ;

int snapshot_proc_interrupts(void)
{
 static FILE *fp;
 int column, retval;

 if (fp == ((void*)0))
  fp = fopen_or_die("/proc/interrupts", "r");
 else
  rewind(fp);


 for (column = 0; column < topo.num_cpus; ++column) {
  int cpu_number;

  retval = fscanf(fp, " CPU%d", &cpu_number);
  if (retval != 1)
   break;

  if (cpu_number > topo.max_cpu_num) {
   warn("/proc/interrupts: cpu%d: > %d", cpu_number, topo.max_cpu_num);
   return 1;
  }

  irq_column_2_cpu[column] = cpu_number;
  irqs_per_cpu[cpu_number] = 0;
 }


 while (1) {
  int column;
  char buf[64];

  retval = fscanf(fp, " %s:", buf);
  if (retval != 1)
   break;


  for (column = 0; column < topo.num_cpus; ++column) {

   int cpu_number, irq_count;

   retval = fscanf(fp, " %d", &irq_count);
   if (retval != 1)
    break;

   cpu_number = irq_column_2_cpu[column];
   irqs_per_cpu[cpu_number] += irq_count;

  }

  while (getc(fp) != '\n')
   ;

 }
 return 0;
}
