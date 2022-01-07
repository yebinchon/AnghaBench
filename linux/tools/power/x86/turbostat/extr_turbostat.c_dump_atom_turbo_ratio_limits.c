
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_ATOM_CORE_RATIOS ;
 int MSR_ATOM_CORE_TURBO_RATIOS ;
 int base_cpu ;
 unsigned int bclk ;
 int fprintf (int ,char*,unsigned int,unsigned int,...) ;
 int get_msr (int,int ,unsigned long long*) ;
 int outf ;

__attribute__((used)) static void
dump_atom_turbo_ratio_limits(void)
{
 unsigned long long msr;
 unsigned int ratio;

 get_msr(base_cpu, MSR_ATOM_CORE_RATIOS, &msr);
 fprintf(outf, "cpu%d: MSR_ATOM_CORE_RATIOS: 0x%08llx\n", base_cpu, msr & 0xFFFFFFFF);

 ratio = (msr >> 0) & 0x3F;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz minimum operating frequency\n",
   ratio, bclk, ratio * bclk);

 ratio = (msr >> 8) & 0x3F;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz low frequency mode (LFM)\n",
   ratio, bclk, ratio * bclk);

 ratio = (msr >> 16) & 0x3F;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz base frequency\n",
   ratio, bclk, ratio * bclk);

 get_msr(base_cpu, MSR_ATOM_CORE_TURBO_RATIOS, &msr);
 fprintf(outf, "cpu%d: MSR_ATOM_CORE_TURBO_RATIOS: 0x%08llx\n", base_cpu, msr & 0xFFFFFFFF);

 ratio = (msr >> 24) & 0x3F;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo 4 active cores\n",
   ratio, bclk, ratio * bclk);

 ratio = (msr >> 16) & 0x3F;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo 3 active cores\n",
   ratio, bclk, ratio * bclk);

 ratio = (msr >> 8) & 0x3F;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo 2 active cores\n",
   ratio, bclk, ratio * bclk);

 ratio = (msr >> 0) & 0x3F;
 if (ratio)
  fprintf(outf, "%d * %.1f = %.1f MHz max turbo 1 active core\n",
   ratio, bclk, ratio * bclk);
}
