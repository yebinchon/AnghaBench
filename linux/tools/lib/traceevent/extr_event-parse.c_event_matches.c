
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_event {int id; int system; int name; } ;


 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int event_matches(struct tep_event *event,
    int id, const char *sys_name,
    const char *event_name)
{
 if (id >= 0 && id != event->id)
  return 0;

 if (event_name && (strcmp(event_name, event->name) != 0))
  return 0;

 if (sys_name && (strcmp(sys_name, event->system) != 0))
  return 0;

 return 1;
}
