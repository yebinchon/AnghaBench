
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_pkg_ctdp {int dummy; } ;


 int fact_trl ;
 int isst_display_result (int,int ,char*,char*,int) ;
 int isst_get_ctdp_levels (int,struct isst_pkg_ctdp*) ;
 int isst_set_pbf_fact_status (int,int ,int) ;
 int isst_set_trl (int,int ) ;
 int isst_set_trl_from_current_tdp (int,int ) ;
 int outf ;
 int perror (char*) ;

__attribute__((used)) static void set_fact_for_cpu(int cpu, void *arg1, void *arg2, void *arg3,
        void *arg4)
{
 int ret;
 int status = *(int *)arg4;

 ret = isst_set_pbf_fact_status(cpu, 0, status);
 if (ret)
  perror("isst_set_fact");
 else {
  if (status) {
   struct isst_pkg_ctdp pkg_dev;

   ret = isst_get_ctdp_levels(cpu, &pkg_dev);
   if (ret) {
    isst_display_result(cpu, outf, "turbo-freq",
          "enable", ret);
    return;
   }
   ret = isst_set_trl(cpu, fact_trl);
   isst_display_result(cpu, outf, "turbo-freq", "enable",
         ret);
  } else {

   isst_set_trl_from_current_tdp(cpu, fact_trl);
   isst_display_result(cpu, outf, "turbo-freq", "disable",
         ret);
  }
 }
}
