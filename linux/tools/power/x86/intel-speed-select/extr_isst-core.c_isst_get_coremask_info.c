
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_pkg_ctdp_level_info {int cpu_count; int core_cpumask; int core_cpumask_size; } ;


 int CONFIG_TDP ;
 int CONFIG_TDP_GET_CORE_MASK ;
 int debug_printf (char*,int,int,int,unsigned int) ;
 int isst_send_mbox_command (int,int ,int ,int ,int,unsigned int*) ;
 int set_cpu_mask_from_punit_coremask (int,unsigned long long,int ,int ,int*) ;

int isst_get_coremask_info(int cpu, int config_index,
      struct isst_pkg_ctdp_level_info *ctdp_level)
{
 unsigned int resp;
 int i, ret;

 ctdp_level->cpu_count = 0;
 for (i = 0; i < 2; ++i) {
  unsigned long long mask;
  int cpu_count = 0;

  ret = isst_send_mbox_command(cpu, CONFIG_TDP,
          CONFIG_TDP_GET_CORE_MASK, 0,
          (i << 8) | config_index, &resp);
  if (ret)
   return ret;

  debug_printf(
   "cpu:%d ctdp:%d mask:%d CONFIG_TDP_GET_CORE_MASK resp:%x\n",
   cpu, config_index, i, resp);

  mask = (unsigned long long)resp << (32 * i);
  set_cpu_mask_from_punit_coremask(cpu, mask,
       ctdp_level->core_cpumask_size,
       ctdp_level->core_cpumask,
       &cpu_count);
  ctdp_level->cpu_count += cpu_count;
  debug_printf("cpu:%d ctdp:%d mask:%d cpu count:%d\n", cpu,
        config_index, i, ctdp_level->cpu_count);
 }

 return 0;
}
