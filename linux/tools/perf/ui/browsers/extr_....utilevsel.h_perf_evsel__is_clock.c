
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int dummy; } ;


 int SOFTWARE ;
 int SW_CPU_CLOCK ;
 int SW_TASK_CLOCK ;
 scalar_t__ perf_evsel__match (struct evsel*,int ,int ) ;

__attribute__((used)) static inline bool perf_evsel__is_clock(struct evsel *evsel)
{
 return perf_evsel__match(evsel, SOFTWARE, SW_CPU_CLOCK) ||
        perf_evsel__match(evsel, SOFTWARE, SW_TASK_CLOCK);
}
