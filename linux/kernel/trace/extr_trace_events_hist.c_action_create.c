
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct track_data {TYPE_1__* val; } ;
struct trace_event_file {struct trace_array* tr; } ;
struct trace_array {int dummy; } ;
struct hist_trigger_data {int n_save_var_str; scalar_t__ n_save_vars; struct track_data** save_vars; int key_size; struct trace_event_file* event_file; } ;
struct field_var {TYPE_1__* val; } ;
struct action_data {scalar_t__ action; unsigned int n_params; int * params; } ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ ACTION_SAVE ;
 scalar_t__ ACTION_SNAPSHOT ;
 scalar_t__ ACTION_TRACE ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HIST_ERR_FIELD_VAR_CREATE_FAIL ;
 int HIST_ERR_TOO_MANY_SAVE_ACTIONS ;
 int HIST_FIELD_FL_STRING ;
 scalar_t__ IS_ERR (struct track_data*) ;
 int PTR_ERR (struct track_data*) ;
 int cond_snapshot_update ;
 struct track_data* create_target_field_var (struct hist_trigger_data*,int *,int *,char*) ;
 int errpos (char*) ;
 int hist_err (struct trace_array*,int ,int ) ;
 int kfree (char*) ;
 char* kstrdup (int ,int ) ;
 int trace_action_create (struct hist_trigger_data*,struct action_data*) ;
 int tracing_snapshot_cond_enable (struct trace_array*,struct track_data*,int ) ;
 struct track_data* track_data_alloc (int ,struct action_data*,struct hist_trigger_data*) ;
 int track_data_free (struct track_data*) ;

__attribute__((used)) static int action_create(struct hist_trigger_data *hist_data,
    struct action_data *data)
{
 struct trace_event_file *file = hist_data->event_file;
 struct trace_array *tr = file->tr;
 struct track_data *track_data;
 struct field_var *field_var;
 unsigned int i;
 char *param;
 int ret = 0;

 if (data->action == ACTION_TRACE)
  return trace_action_create(hist_data, data);

 if (data->action == ACTION_SNAPSHOT) {
  track_data = track_data_alloc(hist_data->key_size, data, hist_data);
  if (IS_ERR(track_data)) {
   ret = PTR_ERR(track_data);
   goto out;
  }

  ret = tracing_snapshot_cond_enable(file->tr, track_data,
         cond_snapshot_update);
  if (ret)
   track_data_free(track_data);

  goto out;
 }

 if (data->action == ACTION_SAVE) {
  if (hist_data->n_save_vars) {
   ret = -EEXIST;
   hist_err(tr, HIST_ERR_TOO_MANY_SAVE_ACTIONS, 0);
   goto out;
  }

  for (i = 0; i < data->n_params; i++) {
   param = kstrdup(data->params[i], GFP_KERNEL);
   if (!param) {
    ret = -ENOMEM;
    goto out;
   }

   field_var = create_target_field_var(hist_data, ((void*)0), ((void*)0), param);
   if (IS_ERR(field_var)) {
    hist_err(tr, HIST_ERR_FIELD_VAR_CREATE_FAIL,
      errpos(param));
    ret = PTR_ERR(field_var);
    kfree(param);
    goto out;
   }

   hist_data->save_vars[hist_data->n_save_vars++] = field_var;
   if (field_var->val->flags & HIST_FIELD_FL_STRING)
    hist_data->n_save_var_str++;
   kfree(param);
  }
 }
 out:
 return ret;
}
