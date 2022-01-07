
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_event_file {int dummy; } ;
struct trace_array {int dummy; } ;
struct hist_trigger_data {unsigned int n_vars; int remove; TYPE_1__* event_file; } ;
struct TYPE_2__ {struct trace_array* tr; } ;


 int EINVAL ;
 int HIST_ERR_DUPLICATE_VAR ;
 unsigned long HIST_FIELD_FL_VAR ;
 unsigned int TRACING_MAP_VALS_MAX ;
 unsigned int TRACING_MAP_VARS_MAX ;
 scalar_t__ WARN_ON (int) ;
 int __create_val_field (struct hist_trigger_data*,unsigned int,struct trace_event_file*,char*,char*,unsigned long) ;
 int errpos (char*) ;
 scalar_t__ find_var (struct hist_trigger_data*,struct trace_event_file*,char*) ;
 int hist_err (struct trace_array*,int ,int ) ;

__attribute__((used)) static int create_var_field(struct hist_trigger_data *hist_data,
       unsigned int val_idx,
       struct trace_event_file *file,
       char *var_name, char *expr_str)
{
 struct trace_array *tr = hist_data->event_file->tr;
 unsigned long flags = 0;

 if (WARN_ON(val_idx >= TRACING_MAP_VALS_MAX + TRACING_MAP_VARS_MAX))
  return -EINVAL;

 if (find_var(hist_data, file, var_name) && !hist_data->remove) {
  hist_err(tr, HIST_ERR_DUPLICATE_VAR, errpos(var_name));
  return -EINVAL;
 }

 flags |= HIST_FIELD_FL_VAR;
 hist_data->n_vars++;
 if (WARN_ON(hist_data->n_vars > TRACING_MAP_VARS_MAX))
  return -EINVAL;

 return __create_val_field(hist_data, val_idx, file, var_name, expr_str, flags);
}
