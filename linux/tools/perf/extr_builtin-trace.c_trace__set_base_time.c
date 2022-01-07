
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace {scalar_t__ base_time; int full_time; } ;
struct perf_sample {scalar_t__ time; } ;
struct TYPE_3__ {int sample_type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;


 int PERF_SAMPLE_TIME ;

__attribute__((used)) static void trace__set_base_time(struct trace *trace,
     struct evsel *evsel,
     struct perf_sample *sample)
{
 if (trace->base_time == 0 && !trace->full_time &&
     (evsel->core.attr.sample_type & PERF_SAMPLE_TIME))
  trace->base_time = sample->time;
}
