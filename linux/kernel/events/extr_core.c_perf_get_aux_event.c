
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {struct perf_event* aux_event; int refcount; } ;


 int atomic_long_inc_not_zero (int *) ;
 int perf_aux_output_match (struct perf_event*,struct perf_event*) ;

__attribute__((used)) static int perf_get_aux_event(struct perf_event *event,
         struct perf_event *group_leader)
{






 if (!group_leader)
  return 0;

 if (!perf_aux_output_match(event, group_leader))
  return 0;

 if (!atomic_long_inc_not_zero(&group_leader->refcount))
  return 0;







 event->aux_event = group_leader;

 return 1;
}
