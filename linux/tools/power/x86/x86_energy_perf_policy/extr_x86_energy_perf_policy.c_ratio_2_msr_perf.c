
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bdx_highest_ratio ;
 scalar_t__ debug ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;

int ratio_2_msr_perf(int ratio)
{
 int msr_perf;

 if (!bdx_highest_ratio)
  return ratio;

 msr_perf = ratio * 255 / bdx_highest_ratio;

 if (debug)
  fprintf(stderr, "%d = ratio_to_msr_perf(%d)\n", msr_perf, ratio);

 return msr_perf;
}
