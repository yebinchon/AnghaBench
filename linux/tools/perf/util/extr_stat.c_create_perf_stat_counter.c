
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target {int dummy; } ;
struct perf_stat_config {int initial_delay; scalar_t__ identifier; int no_inherit; } ;
struct perf_event_attr {int read_format; int inherit; int disabled; int enable_on_exec; int sample_type; scalar_t__ sample_period; } ;
struct TYPE_2__ {int nr_members; int threads; struct perf_event_attr attr; } ;
struct evsel {TYPE_1__ core; struct evsel* leader; } ;


 int PERF_FORMAT_GROUP ;
 int PERF_FORMAT_ID ;
 int PERF_FORMAT_TOTAL_TIME_ENABLED ;
 int PERF_FORMAT_TOTAL_TIME_RUNNING ;
 int PERF_SAMPLE_IDENTIFIER ;
 int evsel__cpus (struct evsel*) ;
 scalar_t__ perf_evsel__is_group_leader (struct evsel*) ;
 int perf_evsel__open_per_cpu (struct evsel*,int ) ;
 int perf_evsel__open_per_thread (struct evsel*,int ) ;
 scalar_t__ target__has_cpu (struct target*) ;
 int target__has_per_thread (struct target*) ;
 scalar_t__ target__none (struct target*) ;

int create_perf_stat_counter(struct evsel *evsel,
        struct perf_stat_config *config,
        struct target *target)
{
 struct perf_event_attr *attr = &evsel->core.attr;
 struct evsel *leader = evsel->leader;

 attr->read_format = PERF_FORMAT_TOTAL_TIME_ENABLED |
       PERF_FORMAT_TOTAL_TIME_RUNNING;






 if (leader->core.nr_members > 1)
  attr->read_format |= PERF_FORMAT_ID|PERF_FORMAT_GROUP;

 attr->inherit = !config->no_inherit;





 attr->sample_period = 0;

 if (config->identifier)
  attr->sample_type = PERF_SAMPLE_IDENTIFIER;






 if (perf_evsel__is_group_leader(evsel)) {
  attr->disabled = 1;





  if (target__none(target) && !config->initial_delay)
   attr->enable_on_exec = 1;
 }

 if (target__has_cpu(target) && !target__has_per_thread(target))
  return perf_evsel__open_per_cpu(evsel, evsel__cpus(evsel));

 return perf_evsel__open_per_thread(evsel, evsel->core.threads);
}
