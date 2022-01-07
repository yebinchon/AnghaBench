
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int nr_events; } ;



int tep_get_events_count(struct tep_handle *tep)
{
 if (tep)
  return tep->nr_events;
 return 0;
}
