
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {TYPE_1__* pmu; } ;
struct TYPE_2__ {int (* aux_output_match ) (struct perf_event*) ;} ;


 int has_aux (struct perf_event*) ;
 int stub1 (struct perf_event*) ;

__attribute__((used)) static int
perf_aux_output_match(struct perf_event *event, struct perf_event *aux_event)
{
 if (!has_aux(aux_event))
  return 0;

 if (!event->pmu->aux_output_match)
  return 0;

 return event->pmu->aux_output_match(aux_event);
}
