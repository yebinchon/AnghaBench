
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double u64 ;
struct perf_time_interval {double start; double end; } ;


 double round (double) ;

__attribute__((used)) static int set_percent_time(struct perf_time_interval *ptime, double start_pcnt,
       double end_pcnt, u64 start, u64 end)
{
 u64 total = end - start;

 if (start_pcnt < 0.0 || start_pcnt > 1.0 ||
     end_pcnt < 0.0 || end_pcnt > 1.0) {
  return -1;
 }

 ptime->start = start + round(start_pcnt * total);
 ptime->end = start + round(end_pcnt * total);

 if (ptime->end > ptime->start && ptime->end != end)
  ptime->end -= 1;

 return 0;
}
