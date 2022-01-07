
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ system_wide; } ;
struct evsel {TYPE_1__ core; } ;
struct TYPE_4__ {int threads; } ;
struct evlist {TYPE_2__ core; } ;


 int perf_thread_map__nr (int ) ;

__attribute__((used)) static int perf_evlist__nr_threads(struct evlist *evlist,
       struct evsel *evsel)
{
 if (evsel->core.system_wide)
  return 1;
 else
  return perf_thread_map__nr(evlist->core.threads);
}
