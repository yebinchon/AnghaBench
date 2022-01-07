
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strfilter {int dummy; } ;
struct probe_trace_event {char* event; int group; } ;


 scalar_t__ e_snprintf (char*,int,char*,int ,char*) ;
 int strfilter__compare (struct strfilter*,char*) ;

__attribute__((used)) static bool filter_probe_trace_event(struct probe_trace_event *tev,
         struct strfilter *filter)
{
 char tmp[128];


 if (strfilter__compare(filter, tev->event))
  return 1;


 if (e_snprintf(tmp, 128, "%s:%s", tev->group, tev->event) < 0)
  return 0;
 return strfilter__compare(filter, tmp);
}
