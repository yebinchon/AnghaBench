
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synth_event {char const* name; } ;
struct dyn_event {int dummy; } ;


 char const* SYNTH_SYSTEM ;
 scalar_t__ strcmp (char const*,char const*) ;
 struct synth_event* to_synth_event (struct dyn_event*) ;

__attribute__((used)) static bool synth_event_match(const char *system, const char *event,
   int argc, const char **argv, struct dyn_event *ev)
{
 struct synth_event *sev = to_synth_event(ev);

 return strcmp(sev->name, event) == 0 &&
  (!system || strcmp(system, SYNTH_SYSTEM) == 0);
}
