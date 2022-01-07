
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_event_file {struct trace_event_call* event_call; } ;
struct trace_event_call {TYPE_1__* class; } ;
struct hist_trigger_data {struct trace_event_file* event_file; } ;
struct hist_field {int dummy; } ;
struct TYPE_2__ {int system; } ;


 struct hist_field* find_var_field (struct hist_trigger_data*,char*) ;
 scalar_t__ strcmp (char*,int ) ;
 int trace_event_name (struct trace_event_call*) ;

__attribute__((used)) static struct hist_field *
find_target_event_var(struct hist_trigger_data *hist_data,
        char *subsys_name, char *event_name, char *var_name)
{
 struct trace_event_file *file = hist_data->event_file;
 struct hist_field *hist_field = ((void*)0);

 if (subsys_name) {
  struct trace_event_call *call;

  if (!event_name)
   return ((void*)0);

  call = file->event_call;

  if (strcmp(subsys_name, call->class->system) != 0)
   return ((void*)0);

  if (strcmp(event_name, trace_event_name(call)) != 0)
   return ((void*)0);
 }

 hist_field = find_var_field(hist_data, var_name);

 return hist_field;
}
