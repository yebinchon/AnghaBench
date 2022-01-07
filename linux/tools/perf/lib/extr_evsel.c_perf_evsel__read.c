
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int dummy; } ;
struct perf_counts_values {int values; } ;


 int EINVAL ;
 scalar_t__ FD (struct perf_evsel*,int,int) ;
 int errno ;
 int memset (struct perf_counts_values*,int ,int) ;
 size_t perf_evsel__read_size (struct perf_evsel*) ;
 scalar_t__ readn (scalar_t__,int ,size_t) ;

int perf_evsel__read(struct perf_evsel *evsel, int cpu, int thread,
       struct perf_counts_values *count)
{
 size_t size = perf_evsel__read_size(evsel);

 memset(count, 0, sizeof(*count));

 if (FD(evsel, cpu, thread) < 0)
  return -EINVAL;

 if (readn(FD(evsel, cpu, thread), count->values, size) <= 0)
  return -errno;

 return 0;
}
