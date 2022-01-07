
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_event_file {struct trace_event_call* event_call; } ;
struct trace_event_call {TYPE_1__* class; } ;
struct TYPE_2__ {char* system; } ;


 scalar_t__ MAX_FILTER_STR_VAL ;
 int last_cmd ;
 int last_cmd_loc ;
 int snprintf (int ,scalar_t__,char*,char const*,char const*) ;
 int strncpy (int ,char*,scalar_t__) ;
 char* trace_event_name (struct trace_event_call*) ;

__attribute__((used)) static void last_cmd_set(struct trace_event_file *file, char *str)
{
 const char *system = ((void*)0), *name = ((void*)0);
 struct trace_event_call *call;

 if (!str)
  return;

 strncpy(last_cmd, str, MAX_FILTER_STR_VAL - 1);

 if (file) {
  call = file->event_call;

  system = call->class->system;
  if (system) {
   name = trace_event_name(call);
   if (!name)
    system = ((void*)0);
  }
 }

 if (system)
  snprintf(last_cmd_loc, MAX_FILTER_STR_VAL, "hist:%s:%s", system, name);
}
