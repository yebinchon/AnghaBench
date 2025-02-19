
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int dummy; } ;
struct evsel {int dummy; } ;
struct evlist {int dummy; } ;


 int TEST_FAIL ;
 int TEST_OK ;
 int UINT_MAX ;
 struct evsel* evlist__last (struct evlist*) ;
 int getpid () ;
 int perf_evsel__open_per_thread (struct evsel*,struct perf_thread_map*) ;
 int perf_thread_map__put (struct perf_thread_map*) ;
 int pr_debug (char*) ;
 struct perf_thread_map* thread_map__new (int,int ,int ) ;

__attribute__((used)) static int attach__current_enabled(struct evlist *evlist)
{
 struct evsel *evsel = evlist__last(evlist);
 struct perf_thread_map *threads;
 int err;

 pr_debug("attaching to current thread as enabled\n");

 threads = thread_map__new(-1, getpid(), UINT_MAX);
 if (threads == ((void*)0)) {
  pr_debug("failed to call thread_map__new\n");
  return -1;
 }

 err = perf_evsel__open_per_thread(evsel, threads);

 perf_thread_map__put(threads);
 return err == 0 ? TEST_OK : TEST_FAIL;
}
