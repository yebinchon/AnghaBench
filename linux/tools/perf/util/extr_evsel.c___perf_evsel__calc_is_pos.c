
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PERF_SAMPLE_CPU ;
 int PERF_SAMPLE_ID ;
 int PERF_SAMPLE_IDENTIFIER ;
 int PERF_SAMPLE_STREAM_ID ;

__attribute__((used)) static int __perf_evsel__calc_is_pos(u64 sample_type)
{
 int idx = 1;

 if (sample_type & PERF_SAMPLE_IDENTIFIER)
  return 1;

 if (!(sample_type & PERF_SAMPLE_ID))
  return -1;

 if (sample_type & PERF_SAMPLE_CPU)
  idx += 1;

 if (sample_type & PERF_SAMPLE_STREAM_ID)
  idx += 1;

 return idx;
}
