
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_TURBO_RATIO_LIMIT ;
 int MSR_TURBO_RATIO_LIMIT1 ;
 int base_cpu ;
 unsigned int bclk ;
 int fprintf (int ,char*,unsigned int,unsigned int,...) ;
 int get_msr (int,int ,unsigned long long*) ;
 scalar_t__ has_turbo_ratio_group_limits (int,int) ;
 int outf ;

__attribute__((used)) static void
dump_turbo_ratio_limits(int family, int model)
{
 unsigned long long msr, core_counts;
 unsigned int ratio, group_size;

 get_msr(base_cpu, MSR_TURBO_RATIO_LIMIT, &msr);
 fprintf(outf, "cpu%d: MSR_TURBO_RATIO_LIMIT: 0x%08llx\n", base_cpu, msr);

 if (has_turbo_ratio_group_limits(family, model)) {
  get_msr(base_cpu, MSR_TURBO_RATIO_LIMIT1, &core_counts);
  fprintf(outf, "cpu%d: MSR_TURBO_RATIO_LIMIT1: 0x%08llx\n", base_cpu, core_counts);
 } else {
  core_counts = 0x0807060504030201;
 }

 ratio = (msr >> 56) & 0xFF;
 group_size = (core_counts >> 56) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo %d active cores\n",
   ratio, bclk, ratio * bclk, group_size);

 ratio = (msr >> 48) & 0xFF;
 group_size = (core_counts >> 48) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo %d active cores\n",
   ratio, bclk, ratio * bclk, group_size);

 ratio = (msr >> 40) & 0xFF;
 group_size = (core_counts >> 40) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo %d active cores\n",
   ratio, bclk, ratio * bclk, group_size);

 ratio = (msr >> 32) & 0xFF;
 group_size = (core_counts >> 32) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo %d active cores\n",
   ratio, bclk, ratio * bclk, group_size);

 ratio = (msr >> 24) & 0xFF;
 group_size = (core_counts >> 24) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo %d active cores\n",
   ratio, bclk, ratio * bclk, group_size);

 ratio = (msr >> 16) & 0xFF;
 group_size = (core_counts >> 16) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo %d active cores\n",
   ratio, bclk, ratio * bclk, group_size);

 ratio = (msr >> 8) & 0xFF;
 group_size = (core_counts >> 8) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo %d active cores\n",
   ratio, bclk, ratio * bclk, group_size);

 ratio = (msr >> 0) & 0xFF;
 group_size = (core_counts >> 0) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo %d active cores\n",
   ratio, bclk, ratio * bclk, group_size);
 return;
}
