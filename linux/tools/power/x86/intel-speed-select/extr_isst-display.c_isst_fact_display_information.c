
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_fact_info {int dummy; } ;
typedef int FILE ;


 int _isst_fact_display_information (int,int *,int,int,int,struct isst_fact_info*,int) ;
 int format_and_print (int *,int,int *,int *) ;
 int print_package_info (int,int *) ;

void isst_fact_display_information(int cpu, FILE *outf, int level,
       int fact_bucket, int fact_avx,
       struct isst_fact_info *fact_info)
{
 print_package_info(cpu, outf);
 _isst_fact_display_information(cpu, outf, level, fact_bucket, fact_avx,
           fact_info, 4);
 format_and_print(outf, 1, ((void*)0), ((void*)0));
}
