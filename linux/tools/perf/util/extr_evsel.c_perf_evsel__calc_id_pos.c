
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sample_type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; int is_pos; int id_pos; } ;


 int __perf_evsel__calc_id_pos (int ) ;
 int __perf_evsel__calc_is_pos (int ) ;

void perf_evsel__calc_id_pos(struct evsel *evsel)
{
 evsel->id_pos = __perf_evsel__calc_id_pos(evsel->core.attr.sample_type);
 evsel->is_pos = __perf_evsel__calc_is_pos(evsel->core.attr.sample_type);
}
