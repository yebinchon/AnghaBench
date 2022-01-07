
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PERF_SAMPLE_ADDR ;
 int PERF_SAMPLE_ID ;
 int PERF_SAMPLE_IDENTIFIER ;
 int PERF_SAMPLE_IP ;
 int PERF_SAMPLE_TID ;
 int PERF_SAMPLE_TIME ;

__attribute__((used)) static int __perf_evsel__calc_id_pos(u64 sample_type)
{
 int idx = 0;

 if (sample_type & PERF_SAMPLE_IDENTIFIER)
  return 0;

 if (!(sample_type & PERF_SAMPLE_ID))
  return -1;

 if (sample_type & PERF_SAMPLE_IP)
  idx += 1;

 if (sample_type & PERF_SAMPLE_TID)
  idx += 1;

 if (sample_type & PERF_SAMPLE_TIME)
  idx += 1;

 if (sample_type & PERF_SAMPLE_ADDR)
  idx += 1;

 return idx;
}
