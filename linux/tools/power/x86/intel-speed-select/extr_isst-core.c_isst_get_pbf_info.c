
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_pbf_info {unsigned int p1_low; unsigned int p1_high; unsigned int tdp; unsigned int t_control; unsigned int t_prochot; int core_cpumask; int core_cpumask_size; } ;


 int CONFIG_TDP ;
 int CONFIG_TDP_PBF_GET_CORE_MASK_INFO ;
 int CONFIG_TDP_PBF_GET_P1HI_P1LO_INFO ;
 int CONFIG_TDP_PBF_GET_TDP_INFO ;
 int CONFIG_TDP_PBF_GET_TJ_MAX_INFO ;
 unsigned int GENMASK (int,int) ;
 int alloc_cpu_set (int *) ;
 int debug_printf (char*,int,unsigned int) ;
 int isst_send_mbox_command (int,int ,int ,int ,unsigned int,unsigned int*) ;
 int set_cpu_mask_from_punit_coremask (int,unsigned long long,int ,int ,int*) ;

int isst_get_pbf_info(int cpu, int level, struct isst_pbf_info *pbf_info)
{
 unsigned int req, resp;
 int i, ret;

 pbf_info->core_cpumask_size = alloc_cpu_set(&pbf_info->core_cpumask);

 for (i = 0; i < 2; ++i) {
  unsigned long long mask;
  int count;

  ret = isst_send_mbox_command(cpu, CONFIG_TDP,
          CONFIG_TDP_PBF_GET_CORE_MASK_INFO,
          0, (i << 8) | level, &resp);
  if (ret)
   return ret;

  debug_printf(
   "cpu:%d CONFIG_TDP_PBF_GET_CORE_MASK_INFO resp:%x\n",
   cpu, resp);

  mask = (unsigned long long)resp << (32 * i);
  set_cpu_mask_from_punit_coremask(cpu, mask,
       pbf_info->core_cpumask_size,
       pbf_info->core_cpumask,
       &count);
 }

 req = level;
 ret = isst_send_mbox_command(cpu, CONFIG_TDP,
         CONFIG_TDP_PBF_GET_P1HI_P1LO_INFO, 0, req,
         &resp);
 if (ret)
  return ret;

 debug_printf("cpu:%d CONFIG_TDP_PBF_GET_P1HI_P1LO_INFO resp:%x\n", cpu,
       resp);

 pbf_info->p1_low = resp & 0xff;
 pbf_info->p1_high = (resp & GENMASK(15, 8)) >> 8;

 req = level;
 ret = isst_send_mbox_command(
  cpu, CONFIG_TDP, CONFIG_TDP_PBF_GET_TDP_INFO, 0, req, &resp);
 if (ret)
  return ret;

 debug_printf("cpu:%d CONFIG_TDP_PBF_GET_TDP_INFO resp:%x\n", cpu, resp);

 pbf_info->tdp = resp & 0xffff;

 req = level;
 ret = isst_send_mbox_command(
  cpu, CONFIG_TDP, CONFIG_TDP_PBF_GET_TJ_MAX_INFO, 0, req, &resp);
 if (ret)
  return ret;

 debug_printf("cpu:%d CONFIG_TDP_PBF_GET_TJ_MAX_INFO resp:%x\n", cpu,
       resp);
 pbf_info->t_control = (resp >> 8) & 0xff;
 pbf_info->t_prochot = resp & 0xff;

 return 0;
}
