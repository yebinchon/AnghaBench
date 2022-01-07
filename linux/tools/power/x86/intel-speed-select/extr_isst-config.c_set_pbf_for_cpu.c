
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isst_display_result (int,int ,char*,char*,int) ;
 int isst_set_pbf_fact_status (int,int,int) ;
 int outf ;
 int perror (char*) ;

__attribute__((used)) static void set_pbf_for_cpu(int cpu, void *arg1, void *arg2, void *arg3,
       void *arg4)
{
 int ret;
 int status = *(int *)arg4;

 ret = isst_set_pbf_fact_status(cpu, 1, status);
 if (ret) {
  perror("isst_set_pbf");
 } else {
  if (status)
   isst_display_result(cpu, outf, "base-freq", "enable",
         ret);
  else
   isst_display_result(cpu, outf, "base-freq", "disable",
         ret);
 }
}
