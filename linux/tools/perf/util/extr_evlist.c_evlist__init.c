
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct perf_thread_map {int dummy; } ;
struct perf_cpu_map {int dummy; } ;
struct TYPE_4__ {int pid; } ;
struct TYPE_5__ {int pollfd; } ;
struct evlist {int bkw_mmap_state; TYPE_1__ workload; TYPE_2__ core; } ;


 int BKW_MMAP_NOTREADY ;
 int fdarray__init (int *,int) ;
 int perf_evlist__init (TYPE_2__*) ;
 int perf_evlist__set_maps (TYPE_2__*,struct perf_cpu_map*,struct perf_thread_map*) ;

void evlist__init(struct evlist *evlist, struct perf_cpu_map *cpus,
    struct perf_thread_map *threads)
{
 perf_evlist__init(&evlist->core);
 perf_evlist__set_maps(&evlist->core, cpus, threads);
 fdarray__init(&evlist->core.pollfd, 64);
 evlist->workload.pid = -1;
 evlist->bkw_mmap_state = BKW_MMAP_NOTREADY;
}
