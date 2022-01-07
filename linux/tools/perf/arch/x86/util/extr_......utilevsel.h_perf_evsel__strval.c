
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int dummy; } ;
struct evsel {int dummy; } ;


 char* perf_evsel__rawptr (struct evsel*,struct perf_sample*,char const*) ;

__attribute__((used)) static inline char *perf_evsel__strval(struct evsel *evsel,
           struct perf_sample *sample,
           const char *name)
{
 return perf_evsel__rawptr(evsel, sample, name);
}
