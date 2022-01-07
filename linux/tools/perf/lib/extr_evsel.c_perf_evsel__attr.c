
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
struct perf_evsel {struct perf_event_attr attr; } ;



struct perf_event_attr *perf_evsel__attr(struct perf_evsel *evsel)
{
 return &evsel->attr;
}
