
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_array {int hist_vars; } ;
struct hist_var_data {int list; struct hist_trigger_data* hist_data; } ;
struct hist_trigger_data {TYPE_1__* event_file; } ;
struct TYPE_2__ {struct trace_array* tr; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct hist_var_data* find_hist_vars (struct hist_trigger_data*) ;
 struct hist_var_data* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int trace_array_put (struct trace_array*) ;
 scalar_t__ tracing_check_open_get_tr (struct trace_array*) ;

__attribute__((used)) static int save_hist_vars(struct hist_trigger_data *hist_data)
{
 struct trace_array *tr = hist_data->event_file->tr;
 struct hist_var_data *var_data;

 var_data = find_hist_vars(hist_data);
 if (var_data)
  return 0;

 if (tracing_check_open_get_tr(tr))
  return -ENODEV;

 var_data = kzalloc(sizeof(*var_data), GFP_KERNEL);
 if (!var_data) {
  trace_array_put(tr);
  return -ENOMEM;
 }

 var_data->hist_data = hist_data;
 list_add(&var_data->list, &tr->hist_vars);

 return 0;
}
