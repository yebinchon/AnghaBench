
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_cpu_num; } ;
typedef int FILE ;


 scalar_t__ BITMASK_SIZE ;
 int fclose (int *) ;
 int * fopen_or_die (char*,char*) ;
 int fscanf (int *,char*,unsigned long*) ;
 TYPE_1__ topo ;

void set_max_cpu_num(void)
{
 FILE *filep;
 unsigned long dummy;

 topo.max_cpu_num = 0;
 filep = fopen_or_die(
   "/sys/devices/system/cpu/cpu0/topology/thread_siblings",
   "r");
 while (fscanf(filep, "%lx,", &dummy) == 1)
  topo.max_cpu_num += BITMASK_SIZE;
 fclose(filep);
 topo.max_cpu_num--;
}
