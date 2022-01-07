
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int dummy; } ;
struct perf_evsel {int dummy; } ;
struct perf_event_attr {int config; int type; } ;
struct perf_counts_values {scalar_t__ val; } ;


 int PERF_COUNT_SW_TASK_CLOCK ;
 int PERF_TYPE_SOFTWARE ;
 int __T (char*,int) ;
 int perf_evsel__close (struct perf_evsel*) ;
 int perf_evsel__delete (struct perf_evsel*) ;
 struct perf_evsel* perf_evsel__new (struct perf_event_attr*) ;
 int perf_evsel__open (struct perf_evsel*,int *,struct perf_thread_map*) ;
 int perf_evsel__read (struct perf_evsel*,int ,int ,struct perf_counts_values*) ;
 struct perf_thread_map* perf_thread_map__new_dummy () ;
 int perf_thread_map__put (struct perf_thread_map*) ;
 int perf_thread_map__set_pid (struct perf_thread_map*,int ,int ) ;

__attribute__((used)) static int test_stat_thread(void)
{
 struct perf_counts_values counts = { .val = 0 };
 struct perf_thread_map *threads;
 struct perf_evsel *evsel;
 struct perf_event_attr attr = {
  .type = PERF_TYPE_SOFTWARE,
  .config = PERF_COUNT_SW_TASK_CLOCK,
 };
 int err;

 threads = perf_thread_map__new_dummy();
 __T("failed to create threads", threads);

 perf_thread_map__set_pid(threads, 0, 0);

 evsel = perf_evsel__new(&attr);
 __T("failed to create evsel", evsel);

 err = perf_evsel__open(evsel, ((void*)0), threads);
 __T("failed to open evsel", err == 0);

 perf_evsel__read(evsel, 0, 0, &counts);
 __T("failed to read value for evsel", counts.val != 0);

 perf_evsel__close(evsel);
 perf_evsel__delete(evsel);

 perf_thread_map__put(threads);
 return 0;
}
