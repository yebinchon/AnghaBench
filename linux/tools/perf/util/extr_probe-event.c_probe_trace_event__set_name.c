
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strlist {int dummy; } ;
struct TYPE_4__ {char* realname; int retprobe; } ;
struct probe_trace_event {char* event; char* group; TYPE_2__ point; } ;
struct TYPE_3__ {char* function; } ;
struct perf_probe_event {char* event; char* group; int sdt; TYPE_1__ point; } ;


 int ENOMEM ;
 char* PERFPROBE_GROUP ;
 int get_new_event_name (char*,int,char const*,struct strlist*,int ,int) ;
 void* strdup (char const*) ;
 int strisglob (char*) ;
 int strlist__add (struct strlist*,char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int probe_trace_event__set_name(struct probe_trace_event *tev,
           struct perf_probe_event *pev,
           struct strlist *namelist,
           bool allow_suffix)
{
 const char *event, *group;
 char buf[64];
 int ret;


 if (pev->event && !pev->sdt)
  event = pev->event;
 else if (tev->event)
  event = tev->event;
 else {

  if (pev->point.function &&
   (strncmp(pev->point.function, "0x", 2) != 0) &&
   !strisglob(pev->point.function))
   event = pev->point.function;
  else
   event = tev->point.realname;
 }
 if (pev->group && !pev->sdt)
  group = pev->group;
 else if (tev->group)
  group = tev->group;
 else
  group = PERFPROBE_GROUP;


 ret = get_new_event_name(buf, 64, event, namelist,
     tev->point.retprobe, allow_suffix);
 if (ret < 0)
  return ret;

 event = buf;

 tev->event = strdup(event);
 tev->group = strdup(group);
 if (tev->event == ((void*)0) || tev->group == ((void*)0))
  return -ENOMEM;


 strlist__add(namelist, event);
 return 0;
}
