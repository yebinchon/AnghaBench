
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int dummy; } ;
struct hist_trigger_data {int dummy; } ;


 int create_key_fields (struct hist_trigger_data*,struct trace_event_file*) ;
 int create_val_fields (struct hist_trigger_data*,struct trace_event_file*) ;
 int create_var_fields (struct hist_trigger_data*,struct trace_event_file*) ;
 int free_var_defs (struct hist_trigger_data*) ;
 int parse_var_defs (struct hist_trigger_data*) ;

__attribute__((used)) static int create_hist_fields(struct hist_trigger_data *hist_data,
         struct trace_event_file *file)
{
 int ret;

 ret = parse_var_defs(hist_data);
 if (ret)
  goto out;

 ret = create_val_fields(hist_data, file);
 if (ret)
  goto out;

 ret = create_var_fields(hist_data, file);
 if (ret)
  goto out;

 ret = create_key_fields(hist_data, file);
 if (ret)
  goto out;
 out:
 free_var_defs(hist_data);

 return ret;
}
