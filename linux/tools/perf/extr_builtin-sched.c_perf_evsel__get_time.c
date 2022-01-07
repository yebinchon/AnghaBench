
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
struct evsel_runtime {size_t ncpu; int * last_time; } ;
struct evsel {int dummy; } ;


 struct evsel_runtime* perf_evsel__get_runtime (struct evsel*) ;

__attribute__((used)) static u64 perf_evsel__get_time(struct evsel *evsel, u32 cpu)
{
 struct evsel_runtime *r = perf_evsel__get_runtime(evsel);

 if ((r == ((void*)0)) || (r->last_time == ((void*)0)) || (cpu >= r->ncpu))
  return 0;

 return r->last_time[cpu];
}
