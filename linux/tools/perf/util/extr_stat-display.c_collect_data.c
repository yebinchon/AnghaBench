
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_stat_config {scalar_t__ no_merge; } ;
struct evsel {scalar_t__ auto_merge_stats; scalar_t__ merged_stat; } ;


 int collect_all_aliases (struct perf_stat_config*,struct evsel*,void (*) (struct perf_stat_config*,struct evsel*,void*,int),void*) ;
 int uniquify_event_name (struct evsel*) ;

__attribute__((used)) static bool collect_data(struct perf_stat_config *config, struct evsel *counter,
       void (*cb)(struct perf_stat_config *config, struct evsel *counter, void *data,
           bool first),
       void *data)
{
 if (counter->merged_stat)
  return 0;
 cb(config, counter, data, 1);
 if (config->no_merge)
  uniquify_event_name(counter);
 else if (counter->auto_merge_stats)
  collect_all_aliases(config, counter, cb, data);
 return 1;
}
