
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int (* filter_match ) (struct perf_event*) ;} ;
struct perf_event {struct pmu* pmu; } ;


 int stub1 (struct perf_event*) ;

__attribute__((used)) static inline int __pmu_filter_match(struct perf_event *event)
{
 struct pmu *pmu = event->pmu;
 return pmu->filter_match ? pmu->filter_match(event) : 1;
}
