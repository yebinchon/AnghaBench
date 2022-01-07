
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_fact_info {unsigned int lp_clipping_ratio_license_sse; unsigned int lp_clipping_ratio_license_avx2; unsigned int lp_clipping_ratio_license_avx512; int bucket_info; } ;


 int CONFIG_TDP ;
 int CONFIG_TDP_GET_FACT_LP_CLIPPING_RATIO ;
 int debug_printf (char*,int,unsigned int) ;
 int isst_get_fact_bucket_info (int,int,int ) ;
 int isst_send_mbox_command (int,int ,int ,int ,int,unsigned int*) ;

int isst_get_fact_info(int cpu, int level, struct isst_fact_info *fact_info)
{
 unsigned int resp;
 int ret;

 ret = isst_send_mbox_command(cpu, CONFIG_TDP,
         CONFIG_TDP_GET_FACT_LP_CLIPPING_RATIO, 0,
         level, &resp);
 if (ret)
  return ret;

 debug_printf("cpu:%d CONFIG_TDP_GET_FACT_LP_CLIPPING_RATIO resp:%x\n",
       cpu, resp);

 fact_info->lp_clipping_ratio_license_sse = resp & 0xff;
 fact_info->lp_clipping_ratio_license_avx2 = (resp >> 8) & 0xff;
 fact_info->lp_clipping_ratio_license_avx512 = (resp >> 16) & 0xff;

 ret = isst_get_fact_bucket_info(cpu, level, fact_info->bucket_info);

 return ret;
}
