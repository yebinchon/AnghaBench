
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int dummy; } ;
struct perf_evsel {struct perf_thread_map* threads; } ;



struct perf_thread_map *perf_evsel__threads(struct perf_evsel *evsel)
{
 return evsel->threads;
}
