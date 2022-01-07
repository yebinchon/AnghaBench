
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_pbf_info {int dummy; } ;
typedef int FILE ;


 int _isst_pbf_display_information (int,int *,int,struct isst_pbf_info*,int) ;
 int format_and_print (int *,int,int *,int *) ;
 int print_package_info (int,int *) ;

void isst_pbf_display_information(int cpu, FILE *outf, int level,
      struct isst_pbf_info *pbf_info)
{
 print_package_info(cpu, outf);
 _isst_pbf_display_information(cpu, outf, level, pbf_info, 4);
 format_and_print(outf, 1, ((void*)0), ((void*)0));
}
