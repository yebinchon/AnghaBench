
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_fact_info {int dummy; } ;


 int fact_avx ;
 int fact_bucket ;
 int isst_fact_display_information (int,int ,int ,int ,int ,struct isst_fact_info*) ;
 int isst_get_fact_info (int,int ,struct isst_fact_info*) ;
 int outf ;
 int perror (char*) ;
 int tdp_level ;

__attribute__((used)) static void dump_fact_config_for_cpu(int cpu, void *arg1, void *arg2,
         void *arg3, void *arg4)
{
 struct isst_fact_info fact_info;
 int ret;

 ret = isst_get_fact_info(cpu, tdp_level, &fact_info);
 if (ret)
  perror("isst_get_fact_bucket_info");
 else
  isst_fact_display_information(cpu, outf, tdp_level, fact_bucket,
           fact_avx, &fact_info);
}
