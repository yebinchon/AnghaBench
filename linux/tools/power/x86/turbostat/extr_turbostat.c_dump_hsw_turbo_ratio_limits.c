
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_TURBO_RATIO_LIMIT2 ;
 int base_cpu ;
 unsigned int bclk ;
 int fprintf (int ,char*,unsigned int,unsigned int,...) ;
 int get_msr (int,int ,unsigned long long*) ;
 int outf ;

__attribute__((used)) static void
dump_hsw_turbo_ratio_limits(void)
{
 unsigned long long msr;
 unsigned int ratio;

 get_msr(base_cpu, MSR_TURBO_RATIO_LIMIT2, &msr);

 fprintf(outf, "cpu%d: MSR_TURBO_RATIO_LIMIT2: 0x%08llx\n", base_cpu, msr);

 ratio = (msr >> 8) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo 18 active cores\n",
   ratio, bclk, ratio * bclk);

 ratio = (msr >> 0) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo 17 active cores\n",
   ratio, bclk, ratio * bclk);
 return;
}
