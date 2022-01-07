
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int exclude_kernel; scalar_t__ precise_ip; int config; int type; } ;
struct evsel {int precise_max; int name; } ;


 int PERF_COUNT_HW_CPU_CYCLES ;
 int PERF_TYPE_HARDWARE ;
 scalar_t__ asprintf (int *,char*,char*,char*,scalar_t__,char*) ;
 int event_attr_init (struct perf_event_attr*) ;
 int evsel__delete (struct evsel*) ;
 struct evsel* evsel__new (struct perf_event_attr*) ;
 int perf_event_can_profile_kernel () ;

struct evsel *perf_evsel__new_cycles(bool precise)
{
 struct perf_event_attr attr = {
  .type = PERF_TYPE_HARDWARE,
  .config = PERF_COUNT_HW_CPU_CYCLES,
  .exclude_kernel = !perf_event_can_profile_kernel(),
 };
 struct evsel *evsel;

 event_attr_init(&attr);

 if (!precise)
  goto new_event;





new_event:
 evsel = evsel__new(&attr);
 if (evsel == ((void*)0))
  goto out;

 evsel->precise_max = 1;


 if (asprintf(&evsel->name, "cycles%s%s%.*s",
       (attr.precise_ip || attr.exclude_kernel) ? ":" : "",
       attr.exclude_kernel ? "u" : "",
       attr.precise_ip ? attr.precise_ip + 1 : 0, "ppp") < 0)
  goto error_free;
out:
 return evsel;
error_free:
 evsel__delete(evsel);
 evsel = ((void*)0);
 goto out;
}
