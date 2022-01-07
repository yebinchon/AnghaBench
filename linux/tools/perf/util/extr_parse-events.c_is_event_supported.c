
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct perf_thread_map {int dummy; } ;
struct perf_event_attr {unsigned int config; int disabled; int type; } ;
struct TYPE_3__ {int exclude_kernel; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;


 int EACCES ;
 int evsel__delete (struct evsel*) ;
 struct evsel* evsel__new (struct perf_event_attr*) ;
 int evsel__open (struct evsel*,int *,struct perf_thread_map*) ;
 int perf_thread_map__put (struct perf_thread_map*) ;
 struct perf_thread_map* thread_map__new_by_tid (int ) ;

__attribute__((used)) static bool is_event_supported(u8 type, unsigned config)
{
 bool ret = 1;
 int open_return;
 struct evsel *evsel;
 struct perf_event_attr attr = {
  .type = type,
  .config = config,
  .disabled = 1,
 };
 struct perf_thread_map *tmap = thread_map__new_by_tid(0);

 if (tmap == ((void*)0))
  return 0;

 evsel = evsel__new(&attr);
 if (evsel) {
  open_return = evsel__open(evsel, ((void*)0), tmap);
  ret = open_return >= 0;

  if (open_return == -EACCES) {







   evsel->core.attr.exclude_kernel = 1;
   ret = evsel__open(evsel, ((void*)0), tmap) >= 0;
  }
  evsel__delete(evsel);
 }

 perf_thread_map__put(tmap);
 return ret;
}
