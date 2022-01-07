
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;
struct tep_event {int system; int name; } ;


 scalar_t__ strcmp (char const*,int ) ;
 struct tep_event* tep_find_event (struct tep_handle*,int) ;
 struct tep_event* tep_find_event_by_name (struct tep_handle*,char const*,char const*) ;

__attribute__((used)) static struct tep_event *search_event(struct tep_handle *tep, int id,
          const char *sys_name,
          const char *event_name)
{
 struct tep_event *event;

 if (id >= 0) {

  event = tep_find_event(tep, id);
  if (!event)
   return ((void*)0);
  if (event_name && (strcmp(event_name, event->name) != 0))
   return ((void*)0);
  if (sys_name && (strcmp(sys_name, event->system) != 0))
   return ((void*)0);
 } else {
  event = tep_find_event_by_name(tep, sys_name, event_name);
  if (!event)
   return ((void*)0);
 }
 return event;
}
