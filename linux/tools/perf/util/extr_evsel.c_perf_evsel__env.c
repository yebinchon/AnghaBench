
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_env {int dummy; } ;
struct evsel {TYPE_1__* evlist; } ;
struct TYPE_2__ {struct perf_env* env; } ;


 struct perf_env perf_env ;

struct perf_env *perf_evsel__env(struct evsel *evsel)
{
 if (evsel && evsel->evlist)
  return evsel->evlist->env;
 return &perf_env;
}
