
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_TURBO_RATIO_LIMIT ;
 int base_cpu ;
 unsigned int bclk ;
 int fprintf (int ,char*,unsigned int,unsigned int,...) ;
 int get_msr (int,int ,unsigned long long*) ;
 int outf ;

__attribute__((used)) static void
dump_knl_turbo_ratio_limits(void)
{
 const unsigned int buckets_no = 7;

 unsigned long long msr;
 int delta_cores, delta_ratio;
 int i, b_nr;
 unsigned int cores[buckets_no];
 unsigned int ratio[buckets_no];

 get_msr(base_cpu, MSR_TURBO_RATIO_LIMIT, &msr);

 fprintf(outf, "cpu%d: MSR_TURBO_RATIO_LIMIT: 0x%08llx\n",
  base_cpu, msr);
 b_nr = 0;
 cores[b_nr] = (msr & 0xFF) >> 1;
 ratio[b_nr] = (msr >> 8) & 0xFF;

 for (i = 16; i < 64; i += 8) {
  delta_cores = (msr >> i) & 0x1F;
  delta_ratio = (msr >> (i + 5)) & 0x7;

  cores[b_nr + 1] = cores[b_nr] + delta_cores;
  ratio[b_nr + 1] = ratio[b_nr] - delta_ratio;
  b_nr++;
 }

 for (i = buckets_no - 1; i >= 0; i--)
  if (i > 0 ? ratio[i] != ratio[i - 1] : 1)
   fprintf(outf,
    "%d * %.1f = %.1f MHz max turbo %d active cores\n",
    ratio[i], bclk, ratio[i] * bclk, cores[i]);
}
