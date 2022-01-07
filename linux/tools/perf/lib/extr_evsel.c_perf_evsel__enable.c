
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int dummy; } ;


 int PERF_EVENT_IOC_ENABLE ;
 int perf_evsel__run_ioctl (struct perf_evsel*,int ,int ) ;

int perf_evsel__enable(struct perf_evsel *evsel)
{
 return perf_evsel__run_ioctl(evsel, PERF_EVENT_IOC_ENABLE, 0);
}
