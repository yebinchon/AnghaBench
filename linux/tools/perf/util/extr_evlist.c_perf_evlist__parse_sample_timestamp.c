
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
typedef int u64 ;
struct evsel {int dummy; } ;
struct evlist {int dummy; } ;


 int EFAULT ;
 struct evsel* perf_evlist__event2evsel (struct evlist*,union perf_event*) ;
 int perf_evsel__parse_sample_timestamp (struct evsel*,union perf_event*,int *) ;

int perf_evlist__parse_sample_timestamp(struct evlist *evlist,
     union perf_event *event,
     u64 *timestamp)
{
 struct evsel *evsel = perf_evlist__event2evsel(evlist, event);

 if (!evsel)
  return -EFAULT;
 return perf_evsel__parse_sample_timestamp(evsel, event, timestamp);
}
