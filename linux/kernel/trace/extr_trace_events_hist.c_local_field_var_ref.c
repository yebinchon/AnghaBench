
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_event_call {TYPE_2__* class; } ;
struct hist_trigger_data {TYPE_1__* event_file; } ;
struct TYPE_4__ {int system; } ;
struct TYPE_3__ {struct trace_event_call* event_call; } ;


 char* field_name_from_var (struct hist_trigger_data*,char*) ;
 int is_var_ref (char*) ;
 scalar_t__ strcmp (char*,int ) ;
 int trace_event_name (struct trace_event_call*) ;

__attribute__((used)) static char *local_field_var_ref(struct hist_trigger_data *hist_data,
     char *system, char *event_name,
     char *var_name)
{
 struct trace_event_call *call;

 if (system && event_name) {
  call = hist_data->event_file->event_call;

  if (strcmp(system, call->class->system) != 0)
   return ((void*)0);

  if (strcmp(event_name, trace_event_name(call)) != 0)
   return ((void*)0);
 }

 if (!!system != !!event_name)
  return ((void*)0);

 if (!is_var_ref(var_name))
  return ((void*)0);

 var_name++;

 return field_name_from_var(hist_data, var_name);
}
