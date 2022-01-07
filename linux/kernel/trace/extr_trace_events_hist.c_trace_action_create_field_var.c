
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_trigger_data {int dummy; } ;
struct hist_field {struct hist_field* var; } ;
struct field_var {struct field_var* var; } ;
struct TYPE_2__ {char* event_system; char* event; } ;
struct action_data {scalar_t__ handler; TYPE_1__ match_data; } ;


 scalar_t__ HANDLER_ONMATCH ;
 scalar_t__ IS_ERR (struct hist_field*) ;
 struct hist_field* create_field_var_hist (struct hist_trigger_data*,char*,char*,char*) ;
 struct hist_field* create_target_field_var (struct hist_trigger_data*,char*,char*,char*) ;
 int destroy_field_var (struct hist_field*) ;
 int save_field_var (struct hist_trigger_data*,struct hist_field*) ;

__attribute__((used)) static struct hist_field *
trace_action_create_field_var(struct hist_trigger_data *hist_data,
         struct action_data *data, char *system,
         char *event, char *var)
{
 struct hist_field *hist_field = ((void*)0);
 struct field_var *field_var;







 field_var = create_target_field_var(hist_data, system, event, var);

 if (field_var && !IS_ERR(field_var)) {
  save_field_var(hist_data, field_var);
  hist_field = field_var->var;
 } else {
  field_var = ((void*)0);





  if (!system && data->handler == HANDLER_ONMATCH) {
   system = data->match_data.event_system;
   event = data->match_data.event;
  }
  hist_field = create_field_var_hist(hist_data, system, event, var);
  if (IS_ERR(hist_field))
   goto free;
 }
 out:
 return hist_field;
 free:
 destroy_field_var(field_var);
 hist_field = ((void*)0);
 goto out;
}
