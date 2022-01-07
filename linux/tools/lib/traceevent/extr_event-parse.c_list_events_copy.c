
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int nr_events; int events; } ;
struct tep_event {int dummy; } ;


 struct tep_event** malloc (int) ;
 int memcpy (struct tep_event**,int ,int) ;

__attribute__((used)) static struct tep_event **list_events_copy(struct tep_handle *tep)
{
 struct tep_event **events;

 if (!tep)
  return ((void*)0);

 events = malloc(sizeof(*events) * (tep->nr_events + 1));
 if (!events)
  return ((void*)0);

 memcpy(events, tep->events, sizeof(*events) * tep->nr_events);
 events[tep->nr_events] = ((void*)0);
 return events;
}
