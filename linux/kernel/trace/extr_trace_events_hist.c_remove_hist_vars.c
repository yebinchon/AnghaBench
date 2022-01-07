
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_array {int dummy; } ;
struct hist_var_data {int list; } ;
struct hist_trigger_data {TYPE_1__* event_file; } ;
struct TYPE_2__ {struct trace_array* tr; } ;


 scalar_t__ WARN_ON (int ) ;
 int check_var_refs (struct hist_trigger_data*) ;
 struct hist_var_data* find_hist_vars (struct hist_trigger_data*) ;
 int kfree (struct hist_var_data*) ;
 int list_del (int *) ;
 int trace_array_put (struct trace_array*) ;

__attribute__((used)) static void remove_hist_vars(struct hist_trigger_data *hist_data)
{
 struct trace_array *tr = hist_data->event_file->tr;
 struct hist_var_data *var_data;

 var_data = find_hist_vars(hist_data);
 if (!var_data)
  return;

 if (WARN_ON(check_var_refs(hist_data)))
  return;

 list_del(&var_data->list);

 kfree(var_data);

 trace_array_put(tr);
}
