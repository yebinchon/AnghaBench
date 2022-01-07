
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_clos_config {int dummy; } ;


 int current_clos ;
 int isst_clos_display_information (int,int ,int ,struct isst_clos_config*) ;
 int isst_pm_get_clos (int,int ,struct isst_clos_config*) ;
 int outf ;
 int perror (char*) ;

__attribute__((used)) static void dump_clos_config_for_cpu(int cpu, void *arg1, void *arg2,
         void *arg3, void *arg4)
{
 struct isst_clos_config clos_config;
 int ret;

 ret = isst_pm_get_clos(cpu, current_clos, &clos_config);
 if (ret)
  perror("isst_pm_get_clos");
 else
  isst_clos_display_information(cpu, outf, current_clos,
           &clos_config);
}
