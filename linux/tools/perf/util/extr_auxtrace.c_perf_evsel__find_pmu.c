
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_pmu {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;


 struct perf_pmu* perf_pmu__scan (struct perf_pmu*) ;

__attribute__((used)) static struct perf_pmu *perf_evsel__find_pmu(struct evsel *evsel)
{
 struct perf_pmu *pmu = ((void*)0);

 while ((pmu = perf_pmu__scan(pmu)) != ((void*)0)) {
  if (pmu->type == evsel->core.attr.type)
   break;
 }

 return pmu;
}
