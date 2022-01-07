
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_set_t ;


 int CPU_COUNT_S (int,int *) ;
 int CPU_ISSET_S (int,int,int *) ;
 int get_topo_max_cpus () ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void printcpulist(int str_len, char *str, int mask_size,
    cpu_set_t *cpu_mask)
{
 int i, first, curr_index, index;

 if (!CPU_COUNT_S(mask_size, cpu_mask)) {
  snprintf(str, str_len, "none");
  return;
 }

 curr_index = 0;
 first = 1;
 for (i = 0; i < get_topo_max_cpus(); ++i) {
  if (!CPU_ISSET_S(i, mask_size, cpu_mask))
   continue;
  if (!first) {
   index = snprintf(&str[curr_index],
      str_len - curr_index, ",");
   curr_index += index;
  }
  index = snprintf(&str[curr_index], str_len - curr_index, "%d",
     i);
  curr_index += index;
  first = 0;
 }
}
