
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct perf_sample_id {int idx; int cpu; int tid; } ;
struct TYPE_5__ {int system_wide; } ;
struct evsel {TYPE_2__ core; } ;
struct TYPE_6__ {scalar_t__ threads; TYPE_1__* cpus; } ;
struct evlist {TYPE_3__ core; } ;
struct TYPE_4__ {int* map; } ;


 struct perf_sample_id* SID (struct evsel*,int,int) ;
 int perf_thread_map__pid (scalar_t__,int) ;

__attribute__((used)) static void perf_evlist__set_sid_idx(struct evlist *evlist,
         struct evsel *evsel, int idx, int cpu,
         int thread)
{
 struct perf_sample_id *sid = SID(evsel, cpu, thread);
 sid->idx = idx;
 if (evlist->core.cpus && cpu >= 0)
  sid->cpu = evlist->core.cpus->map[cpu];
 else
  sid->cpu = -1;
 if (!evsel->core.system_wide && evlist->core.threads && thread >= 0)
  sid->tid = perf_thread_map__pid(evlist->core.threads, thread);
 else
  sid->tid = -1;
}
