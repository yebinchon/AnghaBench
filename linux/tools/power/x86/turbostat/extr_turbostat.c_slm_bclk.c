
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_FSB_FREQ ;
 unsigned int SLM_BCLK_FREQS ;
 int base_cpu ;
 int fprintf (int ,char*,...) ;
 scalar_t__ get_msr (int ,int ,unsigned long long*) ;
 int outf ;
 int quiet ;
 double* slm_freq_table ;

double slm_bclk(void)
{
 unsigned long long msr = 3;
 unsigned int i;
 double freq;

 if (get_msr(base_cpu, MSR_FSB_FREQ, &msr))
  fprintf(outf, "SLM BCLK: unknown\n");

 i = msr & 0xf;
 if (i >= SLM_BCLK_FREQS) {
  fprintf(outf, "SLM BCLK[%d] invalid\n", i);
  i = 3;
 }
 freq = slm_freq_table[i];

 if (!quiet)
  fprintf(outf, "SLM BCLK: %.1f Mhz\n", freq);

 return freq;
}
