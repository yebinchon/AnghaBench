
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct perf_cpu_map {int dummy; } ;
struct evsel {TYPE_2__* evlist; } ;
struct auxtrace_record {int dummy; } ;
struct TYPE_3__ {struct perf_cpu_map* cpus; } ;
struct TYPE_4__ {TYPE_1__ core; } ;


 int EINVAL ;
 int ETM_OPT_CTXTID ;
 int ETM_OPT_TS ;
 int cpu__max_cpu () ;
 int cpu_map__has (struct perf_cpu_map*,int) ;
 int cs_etm_set_context_id (struct auxtrace_record*,struct evsel*,int) ;
 int cs_etm_set_timestamp (struct auxtrace_record*,struct evsel*,int) ;
 struct perf_cpu_map* perf_cpu_map__new (int *) ;
 int perf_cpu_map__put (struct perf_cpu_map*) ;

__attribute__((used)) static int cs_etm_set_option(struct auxtrace_record *itr,
        struct evsel *evsel, u32 option)
{
 int i, err = -EINVAL;
 struct perf_cpu_map *event_cpus = evsel->evlist->core.cpus;
 struct perf_cpu_map *online_cpus = perf_cpu_map__new(((void*)0));


 for (i = 0; i < cpu__max_cpu(); i++) {
  if (!cpu_map__has(event_cpus, i) ||
      !cpu_map__has(online_cpus, i))
   continue;

  if (option & ETM_OPT_CTXTID) {
   err = cs_etm_set_context_id(itr, evsel, i);
   if (err)
    goto out;
  }
  if (option & ETM_OPT_TS) {
   err = cs_etm_set_timestamp(itr, evsel, i);
   if (err)
    goto out;
  }
  if (option & ~(ETM_OPT_CTXTID | ETM_OPT_TS))

   goto out;
 }

 err = 0;
out:
 perf_cpu_map__put(online_cpus);
 return err;
}
