
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_evsel {int ids; int * id; } ;
struct perf_evlist {int dummy; } ;


 int perf_evlist__id_hash (struct perf_evlist*,struct perf_evsel*,int,int,int ) ;

void perf_evlist__id_add(struct perf_evlist *evlist,
    struct perf_evsel *evsel,
    int cpu, int thread, u64 id)
{
 perf_evlist__id_hash(evlist, evsel, cpu, thread, id);
 evsel->id[evsel->ids++] = id;
}
