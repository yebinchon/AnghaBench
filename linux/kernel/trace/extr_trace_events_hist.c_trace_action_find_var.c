
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_array {int dummy; } ;
struct hist_trigger_data {TYPE_2__* event_file; } ;
struct hist_field {int dummy; } ;
struct TYPE_3__ {char* event_system; char* event; } ;
struct action_data {scalar_t__ handler; TYPE_1__ match_data; } ;
struct TYPE_4__ {struct trace_array* tr; } ;


 scalar_t__ HANDLER_ONMATCH ;
 int HIST_ERR_PARAM_NOT_FOUND ;
 int errpos (char*) ;
 struct hist_field* find_event_var (struct hist_trigger_data*,char*,char*,char*) ;
 struct hist_field* find_target_event_var (struct hist_trigger_data*,char*,char*,char*) ;
 int hist_err (struct trace_array*,int ,int ) ;

__attribute__((used)) static struct hist_field *
trace_action_find_var(struct hist_trigger_data *hist_data,
        struct action_data *data,
        char *system, char *event, char *var)
{
 struct trace_array *tr = hist_data->event_file->tr;
 struct hist_field *hist_field;

 var++;

 hist_field = find_target_event_var(hist_data, system, event, var);
 if (!hist_field) {
  if (!system && data->handler == HANDLER_ONMATCH) {
   system = data->match_data.event_system;
   event = data->match_data.event;
  }

  hist_field = find_event_var(hist_data, system, event, var);
 }

 if (!hist_field)
  hist_err(tr, HIST_ERR_PARAM_NOT_FOUND, errpos(var));

 return hist_field;
}
