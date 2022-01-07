
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_array {int dummy; } ;
struct hist_trigger_data {TYPE_1__* event_file; } ;
struct hist_field {int dummy; } ;
struct TYPE_2__ {struct trace_array* tr; } ;


 int HIST_ERR_VAR_NOT_FOUND ;
 struct hist_field* create_var_ref (struct hist_trigger_data*,struct hist_field*,char*,char*) ;
 int errpos (char*) ;
 struct hist_field* find_event_var (struct hist_trigger_data*,char*,char*,char*) ;
 int hist_err (struct trace_array*,int ,int ) ;
 int is_var_ref (char*) ;

__attribute__((used)) static struct hist_field *parse_var_ref(struct hist_trigger_data *hist_data,
     char *system, char *event_name,
     char *var_name)
{
 struct hist_field *var_field = ((void*)0), *ref_field = ((void*)0);
 struct trace_array *tr = hist_data->event_file->tr;

 if (!is_var_ref(var_name))
  return ((void*)0);

 var_name++;

 var_field = find_event_var(hist_data, system, event_name, var_name);
 if (var_field)
  ref_field = create_var_ref(hist_data, var_field,
        system, event_name);

 if (!ref_field)
  hist_err(tr, HIST_ERR_VAR_NOT_FOUND, errpos(var_name));

 return ref_field;
}
