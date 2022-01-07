
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 size_t ARM_SPE_PMU_TYPE ;
 char** arm_spe_info_fmts ;
 int dump_trace ;
 int fprintf (int ,char*,int ) ;
 int stdout ;

__attribute__((used)) static void arm_spe_print_info(__u64 *arr)
{
 if (!dump_trace)
  return;

 fprintf(stdout, arm_spe_info_fmts[ARM_SPE_PMU_TYPE], arr[ARM_SPE_PMU_TYPE]);
}
