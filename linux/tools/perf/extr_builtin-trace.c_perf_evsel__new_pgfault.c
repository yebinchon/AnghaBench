
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event_attr {int mmap_data; int sample_period; int config; int type; } ;
struct evsel {int handler; } ;


 int PERF_TYPE_SOFTWARE ;
 int event_attr_init (struct perf_event_attr*) ;
 struct evsel* evsel__new (struct perf_event_attr*) ;
 int trace__pgfault ;

__attribute__((used)) static struct evsel *perf_evsel__new_pgfault(u64 config)
{
 struct evsel *evsel;
 struct perf_event_attr attr = {
  .type = PERF_TYPE_SOFTWARE,
  .mmap_data = 1,
 };

 attr.config = config;
 attr.sample_period = 1;

 event_attr_init(&attr);

 evsel = evsel__new(&attr);
 if (evsel)
  evsel->handler = trace__pgfault;

 return evsel;
}
