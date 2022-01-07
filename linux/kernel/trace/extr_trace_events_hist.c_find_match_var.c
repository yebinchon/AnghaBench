
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_event_file {int dummy; } ;
struct trace_array {int dummy; } ;
struct hist_trigger_data {unsigned int n_actions; struct action_data** actions; TYPE_2__* event_file; } ;
struct hist_field {int dummy; } ;
struct TYPE_3__ {char* event_system; char* event; } ;
struct action_data {scalar_t__ handler; TYPE_1__ match_data; } ;
struct TYPE_4__ {struct trace_array* tr; } ;


 int EINVAL ;
 struct hist_field* ERR_PTR (int ) ;
 scalar_t__ HANDLER_ONMATCH ;
 int HIST_ERR_VAR_NOT_UNIQUE ;
 int errpos (char*) ;
 struct hist_field* find_file_var (struct trace_event_file*,char*) ;
 struct trace_event_file* find_var_file (struct trace_array*,char*,char*,char*) ;
 int hist_err (struct trace_array*,int ,int ) ;

__attribute__((used)) static struct hist_field *
find_match_var(struct hist_trigger_data *hist_data, char *var_name)
{
 struct trace_array *tr = hist_data->event_file->tr;
 struct hist_field *hist_field, *found = ((void*)0);
 struct trace_event_file *file;
 unsigned int i;

 for (i = 0; i < hist_data->n_actions; i++) {
  struct action_data *data = hist_data->actions[i];

  if (data->handler == HANDLER_ONMATCH) {
   char *system = data->match_data.event_system;
   char *event_name = data->match_data.event;

   file = find_var_file(tr, system, event_name, var_name);
   if (!file)
    continue;
   hist_field = find_file_var(file, var_name);
   if (hist_field) {
    if (found) {
     hist_err(tr, HIST_ERR_VAR_NOT_UNIQUE,
       errpos(var_name));
     return ERR_PTR(-EINVAL);
    }

    found = hist_field;
   }
  }
 }
 return found;
}
