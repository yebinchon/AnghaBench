
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct perf_counts_values {double run; double ena; scalar_t__ val; } ;
typedef int s8 ;



void perf_counts_values__scale(struct perf_counts_values *count,
          bool scale, s8 *pscaled)
{
 s8 scaled = 0;

 if (scale) {
  if (count->run == 0) {
   scaled = -1;
   count->val = 0;
  } else if (count->run < count->ena) {
   scaled = 1;
   count->val = (u64)((double) count->val * count->ena / count->run);
  }
 }

 if (pscaled)
  *pscaled = scaled;
}
