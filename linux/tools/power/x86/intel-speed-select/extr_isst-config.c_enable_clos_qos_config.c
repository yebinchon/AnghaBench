
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clos_priority_type ;
 int isst_display_result (int,int ,char*,char*,int) ;
 int isst_pm_qos_config (int,int,int ) ;
 int outf ;
 int perror (char*) ;

__attribute__((used)) static void enable_clos_qos_config(int cpu, void *arg1, void *arg2, void *arg3,
       void *arg4)
{
 int ret;
 int status = *(int *)arg4;

 ret = isst_pm_qos_config(cpu, status, clos_priority_type);
 if (ret) {
  perror("isst_pm_qos_config");
 } else {
  if (status)
   isst_display_result(cpu, outf, "core-power", "enable",
         ret);
  else
   isst_display_result(cpu, outf, "core-power", "disable",
         ret);
 }
}
