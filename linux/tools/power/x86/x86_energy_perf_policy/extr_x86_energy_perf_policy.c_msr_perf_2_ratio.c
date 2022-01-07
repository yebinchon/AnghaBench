
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bdx_highest_ratio ;
 scalar_t__ debug ;
 int fprintf (int ,char*,int,int,double) ;
 int stderr ;

int msr_perf_2_ratio(int msr_perf)
{
 int ratio;
 double d;

 if (!bdx_highest_ratio)
  return msr_perf;

 d = (double)msr_perf * (double) bdx_highest_ratio / 255.0;
 d = d + 0.5;
 ratio = (int)d;

 if (debug)
  fprintf(stderr, "%d = msr_perf_ratio(%d) {%f}\n", ratio, msr_perf, d);

 return ratio;
}
