
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int nr_events; struct tep_event** events; } ;
struct tep_event {int dummy; } ;



struct tep_event *tep_get_event(struct tep_handle *tep, int index)
{
 if (tep && tep->events && index < tep->nr_events)
  return tep->events[index];

 return ((void*)0);
}
