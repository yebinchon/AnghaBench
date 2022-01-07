
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_pbf_info {int dummy; } ;


 int isst_get_pbf_info (int,int ,struct isst_pbf_info*) ;
 int isst_get_pbf_info_complete (struct isst_pbf_info*) ;
 int isst_pbf_display_information (int,int ,int ,struct isst_pbf_info*) ;
 int outf ;
 int perror (char*) ;
 int tdp_level ;

__attribute__((used)) static void dump_pbf_config_for_cpu(int cpu, void *arg1, void *arg2, void *arg3,
        void *arg4)
{
 struct isst_pbf_info pbf_info;
 int ret;

 ret = isst_get_pbf_info(cpu, tdp_level, &pbf_info);
 if (ret) {
  perror("isst_get_pbf_info");
 } else {
  isst_pbf_display_information(cpu, outf, tdp_level, &pbf_info);
  isst_get_pbf_info_complete(&pbf_info);
 }
}
