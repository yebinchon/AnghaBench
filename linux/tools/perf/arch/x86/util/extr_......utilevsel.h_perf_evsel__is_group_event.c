
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr_members; } ;
struct evsel {TYPE_1__ core; } ;
struct TYPE_4__ {int event_group; } ;


 scalar_t__ perf_evsel__is_group_leader (struct evsel*) ;
 TYPE_2__ symbol_conf ;

__attribute__((used)) static inline bool perf_evsel__is_group_event(struct evsel *evsel)
{
 if (!symbol_conf.event_group)
  return 0;

 return perf_evsel__is_group_leader(evsel) && evsel->core.nr_members > 1;
}
