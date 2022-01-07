
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_TURBO_RATIO_LIMIT1 ;
 int base_cpu ;
 unsigned int bclk ;
 int fprintf (int ,char*,unsigned int,unsigned int,...) ;
 int get_msr (int,int ,unsigned long long*) ;
 int outf ;

__attribute__((used)) static void
dump_ivt_turbo_ratio_limits(void)
{
 unsigned long long msr;
 unsigned int ratio;

 get_msr(base_cpu, MSR_TURBO_RATIO_LIMIT1, &msr);

 fprintf(outf, "cpu%d: MSR_TURBO_RATIO_LIMIT1: 0x%08llx\n", base_cpu, msr);

 ratio = (msr >> 56) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo 16 active cores\n",
   ratio, bclk, ratio * bclk);

 ratio = (msr >> 48) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo 15 active cores\n",
   ratio, bclk, ratio * bclk);

 ratio = (msr >> 40) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo 14 active cores\n",
   ratio, bclk, ratio * bclk);

 ratio = (msr >> 32) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo 13 active cores\n",
   ratio, bclk, ratio * bclk);

 ratio = (msr >> 24) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo 12 active cores\n",
   ratio, bclk, ratio * bclk);

 ratio = (msr >> 16) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo 11 active cores\n",
   ratio, bclk, ratio * bclk);

 ratio = (msr >> 8) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo 10 active cores\n",
   ratio, bclk, ratio * bclk);

 ratio = (msr >> 0) & 0xFF;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo 9 active cores\n",
   ratio, bclk, ratio * bclk);
 return;
}
