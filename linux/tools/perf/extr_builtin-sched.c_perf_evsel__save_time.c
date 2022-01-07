
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
typedef int u32 ;
struct evsel_runtime {int ncpu; void** last_time; } ;
struct evsel {int dummy; } ;


 int __roundup_pow_of_two (int) ;
 struct evsel_runtime* perf_evsel__get_runtime (struct evsel*) ;
 void* realloc (void**,int) ;

__attribute__((used)) static void perf_evsel__save_time(struct evsel *evsel,
      u64 timestamp, u32 cpu)
{
 struct evsel_runtime *r = perf_evsel__get_runtime(evsel);

 if (r == ((void*)0))
  return;

 if ((cpu >= r->ncpu) || (r->last_time == ((void*)0))) {
  int i, n = __roundup_pow_of_two(cpu+1);
  void *p = r->last_time;

  p = realloc(r->last_time, n * sizeof(u64));
  if (!p)
   return;

  r->last_time = p;
  for (i = r->ncpu; i < n; ++i)
   r->last_time[i] = (u64) 0;

  r->ncpu = n;
 }

 r->last_time[cpu] = timestamp;
}
