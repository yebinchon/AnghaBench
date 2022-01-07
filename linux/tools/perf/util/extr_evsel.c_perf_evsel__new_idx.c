
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct perf_event_attr {int dummy; } ;
struct TYPE_4__ {int sample_type; int sample_period; } ;
struct TYPE_5__ {TYPE_1__ attr; } ;
struct evsel {char const* unit; int scale; TYPE_2__ core; } ;
struct TYPE_6__ {int size; } ;


 int PERF_SAMPLE_CPU ;
 int PERF_SAMPLE_PERIOD ;
 int PERF_SAMPLE_RAW ;
 int PERF_SAMPLE_TIME ;
 int evsel__init (struct evsel*,struct perf_event_attr*,int) ;
 scalar_t__ perf_evsel__is_bpf_output (struct evsel*) ;
 scalar_t__ perf_evsel__is_clock (struct evsel*) ;
 TYPE_3__ perf_evsel__object ;
 struct evsel* zalloc (int ) ;

struct evsel *perf_evsel__new_idx(struct perf_event_attr *attr, int idx)
{
 struct evsel *evsel = zalloc(perf_evsel__object.size);

 if (!evsel)
  return ((void*)0);
 evsel__init(evsel, attr, idx);

 if (perf_evsel__is_bpf_output(evsel)) {
  evsel->core.attr.sample_type |= (PERF_SAMPLE_RAW | PERF_SAMPLE_TIME |
         PERF_SAMPLE_CPU | PERF_SAMPLE_PERIOD),
  evsel->core.attr.sample_period = 1;
 }

 if (perf_evsel__is_clock(evsel)) {




  static const char *unit = "msec";

  evsel->unit = unit;
  evsel->scale = 1e-6;
 }

 return evsel;
}
