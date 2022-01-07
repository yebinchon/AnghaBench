
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ BITMASK_SIZE ;
 int debug_printf (char*,scalar_t__) ;
 int fclose (int *) ;
 int * fopen_or_exit (char*,char*) ;
 int fscanf (int *,char*,unsigned long*) ;
 scalar_t__ topo_max_cpus ;

__attribute__((used)) static void set_max_cpu_num(void)
{
 FILE *filep;
 unsigned long dummy;

 topo_max_cpus = 0;
 filep = fopen_or_exit(
  "/sys/devices/system/cpu/cpu0/topology/thread_siblings", "r");
 while (fscanf(filep, "%lx,", &dummy) == 1)
  topo_max_cpus += BITMASK_SIZE;
 fclose(filep);
 topo_max_cpus--;

 debug_printf("max cpus %d\n", topo_max_cpus);
}
