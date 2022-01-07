
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int nr_events; struct tep_event* last_event; struct tep_event** events; } ;
struct tep_event {int system; int name; } ;


 scalar_t__ strcmp (int ,char const*) ;

struct tep_event *
tep_find_event_by_name(struct tep_handle *tep,
         const char *sys, const char *name)
{
 struct tep_event *event = ((void*)0);
 int i;

 if (tep->last_event &&
     strcmp(tep->last_event->name, name) == 0 &&
     (!sys || strcmp(tep->last_event->system, sys) == 0))
  return tep->last_event;

 for (i = 0; i < tep->nr_events; i++) {
  event = tep->events[i];
  if (strcmp(event->name, name) == 0) {
   if (!sys)
    break;
   if (strcmp(event->system, sys) == 0)
    break;
  }
 }
 if (i == tep->nr_events)
  event = ((void*)0);

 tep->last_event = event;
 return event;
}
