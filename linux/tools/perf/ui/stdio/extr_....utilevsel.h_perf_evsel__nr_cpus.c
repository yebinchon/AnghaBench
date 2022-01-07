
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evsel {int dummy; } ;
struct TYPE_2__ {int nr; } ;


 TYPE_1__* evsel__cpus (struct evsel*) ;

__attribute__((used)) static inline int perf_evsel__nr_cpus(struct evsel *evsel)
{
 return evsel__cpus(evsel)->nr;
}
