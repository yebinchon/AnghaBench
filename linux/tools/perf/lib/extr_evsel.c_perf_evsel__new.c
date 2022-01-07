
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int dummy; } ;
struct perf_event_attr {int dummy; } ;


 int perf_evsel__init (struct perf_evsel*,struct perf_event_attr*) ;
 struct perf_evsel* zalloc (int) ;

struct perf_evsel *perf_evsel__new(struct perf_event_attr *attr)
{
 struct perf_evsel *evsel = zalloc(sizeof(*evsel));

 if (evsel != ((void*)0))
  perf_evsel__init(evsel, attr);

 return evsel;
}
