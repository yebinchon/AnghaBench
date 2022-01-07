
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hist_trigger_data {unsigned int n_actions; struct action_data** actions; } ;
struct TYPE_4__ {char* var_str; } ;
struct TYPE_3__ {char* event_system; char* event; } ;
struct action_data {scalar_t__ handler; scalar_t__ action; unsigned int n_params; char** params; char* synth_event_name; char* action_name; TYPE_2__ track_data; TYPE_1__ match_data; scalar_t__ use_trace_keyword; } ;


 scalar_t__ HANDLER_ONCHANGE ;
 scalar_t__ HANDLER_ONMATCH ;
 scalar_t__ HANDLER_ONMAX ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool actions_match(struct hist_trigger_data *hist_data,
     struct hist_trigger_data *hist_data_test)
{
 unsigned int i, j;

 if (hist_data->n_actions != hist_data_test->n_actions)
  return 0;

 for (i = 0; i < hist_data->n_actions; i++) {
  struct action_data *data = hist_data->actions[i];
  struct action_data *data_test = hist_data_test->actions[i];
  char *action_name, *action_name_test;

  if (data->handler != data_test->handler)
   return 0;
  if (data->action != data_test->action)
   return 0;

  if (data->n_params != data_test->n_params)
   return 0;

  for (j = 0; j < data->n_params; j++) {
   if (strcmp(data->params[j], data_test->params[j]) != 0)
    return 0;
  }

  if (data->use_trace_keyword)
   action_name = data->synth_event_name;
  else
   action_name = data->action_name;

  if (data_test->use_trace_keyword)
   action_name_test = data_test->synth_event_name;
  else
   action_name_test = data_test->action_name;

  if (strcmp(action_name, action_name_test) != 0)
   return 0;

  if (data->handler == HANDLER_ONMATCH) {
   if (strcmp(data->match_data.event_system,
       data_test->match_data.event_system) != 0)
    return 0;
   if (strcmp(data->match_data.event,
       data_test->match_data.event) != 0)
    return 0;
  } else if (data->handler == HANDLER_ONMAX ||
      data->handler == HANDLER_ONCHANGE) {
   if (strcmp(data->track_data.var_str,
       data_test->track_data.var_str) != 0)
    return 0;
  }
 }

 return 1;
}
