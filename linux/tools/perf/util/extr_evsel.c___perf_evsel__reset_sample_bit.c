
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int sample_type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {int sample_size; TYPE_2__ core; } ;
typedef enum perf_event_sample_format { ____Placeholder_perf_event_sample_format } perf_event_sample_format ;


 int perf_evsel__calc_id_pos (struct evsel*) ;

void __perf_evsel__reset_sample_bit(struct evsel *evsel,
        enum perf_event_sample_format bit)
{
 if (evsel->core.attr.sample_type & bit) {
  evsel->core.attr.sample_type &= ~bit;
  evsel->sample_size -= sizeof(u64);
  perf_evsel__calc_id_pos(evsel);
 }
}
