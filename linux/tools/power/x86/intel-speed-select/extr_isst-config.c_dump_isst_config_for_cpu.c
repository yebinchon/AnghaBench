
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_pkg_ctdp {int dummy; } ;
typedef int pkg_dev ;


 int isst_ctdp_display_information (int,int ,int ,struct isst_pkg_ctdp*) ;
 int isst_get_process_ctdp (int,int ,struct isst_pkg_ctdp*) ;
 int isst_get_process_ctdp_complete (int,struct isst_pkg_ctdp*) ;
 int memset (struct isst_pkg_ctdp*,int ,int) ;
 int outf ;
 int perror (char*) ;
 int tdp_level ;

__attribute__((used)) static void dump_isst_config_for_cpu(int cpu, void *arg1, void *arg2,
         void *arg3, void *arg4)
{
 struct isst_pkg_ctdp pkg_dev;
 int ret;

 memset(&pkg_dev, 0, sizeof(pkg_dev));
 ret = isst_get_process_ctdp(cpu, tdp_level, &pkg_dev);
 if (ret) {
  perror("isst_get_process_ctdp");
 } else {
  isst_ctdp_display_information(cpu, outf, tdp_level, &pkg_dev);
  isst_get_process_ctdp_complete(cpu, &pkg_dev);
 }
}
