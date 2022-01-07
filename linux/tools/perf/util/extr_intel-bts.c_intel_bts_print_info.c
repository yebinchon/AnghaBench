
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int dump_trace ;
 int fprintf (int ,char*,int ) ;
 char** intel_bts_info_fmts ;
 int stdout ;

__attribute__((used)) static void intel_bts_print_info(__u64 *arr, int start, int finish)
{
 int i;

 if (!dump_trace)
  return;

 for (i = start; i <= finish; i++)
  fprintf(stdout, intel_bts_info_fmts[i], arr[i]);
}
