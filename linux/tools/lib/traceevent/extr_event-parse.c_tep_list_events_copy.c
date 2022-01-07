
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int nr_events; } ;
struct tep_event {int dummy; } ;
typedef enum tep_event_sort_type { ____Placeholder_tep_event_sort_type } tep_event_sort_type ;


 int TEP_EVENT_SORT_ID ;
 struct tep_event** list_events_copy (struct tep_handle*) ;
 int list_events_sort (struct tep_event**,int ,int) ;

struct tep_event **tep_list_events_copy(struct tep_handle *tep,
     enum tep_event_sort_type sort_type)
{
 struct tep_event **events;

 if (!tep)
  return ((void*)0);

 events = list_events_copy(tep);
 if (!events)
  return ((void*)0);


 if (sort_type == TEP_EVENT_SORT_ID)
  return events;

 list_events_sort(events, tep->nr_events, sort_type);

 return events;
}
