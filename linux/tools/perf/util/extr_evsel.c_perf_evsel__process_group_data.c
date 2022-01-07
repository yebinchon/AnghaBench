
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sample_read_value {int value; int id; } ;
struct TYPE_3__ {int read_format; } ;
struct TYPE_4__ {scalar_t__ nr_members; TYPE_1__ attr; } ;
struct evsel {int evlist; TYPE_2__ core; } ;


 int EINVAL ;
 int PERF_FORMAT_TOTAL_TIME_ENABLED ;
 int PERF_FORMAT_TOTAL_TIME_RUNNING ;
 struct evsel* perf_evlist__id2evsel (int ,int ) ;
 int perf_evsel__set_count (struct evsel*,int,int,int ,int,int) ;

__attribute__((used)) static int
perf_evsel__process_group_data(struct evsel *leader,
          int cpu, int thread, u64 *data)
{
 u64 read_format = leader->core.attr.read_format;
 struct sample_read_value *v;
 u64 nr, ena = 0, run = 0, i;

 nr = *data++;

 if (nr != (u64) leader->core.nr_members)
  return -EINVAL;

 if (read_format & PERF_FORMAT_TOTAL_TIME_ENABLED)
  ena = *data++;

 if (read_format & PERF_FORMAT_TOTAL_TIME_RUNNING)
  run = *data++;

 v = (struct sample_read_value *) data;

 perf_evsel__set_count(leader, cpu, thread,
         v[0].value, ena, run);

 for (i = 1; i < nr; i++) {
  struct evsel *counter;

  counter = perf_evlist__id2evsel(leader->evlist, v[i].id);
  if (!counter)
   return -EINVAL;

  perf_evsel__set_count(counter, cpu, thread,
          v[i].value, ena, run);
 }

 return 0;
}
