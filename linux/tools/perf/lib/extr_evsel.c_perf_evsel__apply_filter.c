
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int dummy; } ;


 int PERF_EVENT_IOC_SET_FILTER ;
 int perf_evsel__run_ioctl (struct perf_evsel*,int ,void*) ;

int perf_evsel__apply_filter(struct perf_evsel *evsel, const char *filter)
{
 return perf_evsel__run_ioctl(evsel,
         PERF_EVENT_IOC_SET_FILTER,
         (void *)filter);
}
