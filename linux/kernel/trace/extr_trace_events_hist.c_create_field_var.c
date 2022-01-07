
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {struct trace_array* tr; } ;
struct trace_array {int dummy; } ;
struct hist_trigger_data {scalar_t__ n_field_vars; } ;
struct hist_field {int type; int size; } ;
struct field_var {struct hist_field* val; struct hist_field* var; } ;


 int EINVAL ;
 int ENOMEM ;
 struct field_var* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int HIST_ERR_FIELD_VAR_PARSE_FAIL ;
 int HIST_ERR_TOO_MANY_FIELD_VARS ;
 int HIST_ERR_VAR_CREATE_FIND_FAIL ;
 unsigned long HIST_FIELD_FL_VAR ;
 scalar_t__ IS_ERR (struct hist_field*) ;
 int PTR_ERR (struct hist_field*) ;
 scalar_t__ SYNTH_FIELDS_MAX ;
 struct hist_field* create_var (struct hist_trigger_data*,struct trace_event_file*,char*,int ,int ) ;
 int errpos (char*) ;
 int hist_err (struct trace_array*,int ,int ) ;
 int kfree (struct hist_field*) ;
 struct field_var* kzalloc (int,int ) ;
 struct hist_field* parse_atom (struct hist_trigger_data*,struct trace_event_file*,char*,unsigned long*,int *) ;

__attribute__((used)) static struct field_var *create_field_var(struct hist_trigger_data *hist_data,
       struct trace_event_file *file,
       char *field_name)
{
 struct hist_field *val = ((void*)0), *var = ((void*)0);
 unsigned long flags = HIST_FIELD_FL_VAR;
 struct trace_array *tr = file->tr;
 struct field_var *field_var;
 int ret = 0;

 if (hist_data->n_field_vars >= SYNTH_FIELDS_MAX) {
  hist_err(tr, HIST_ERR_TOO_MANY_FIELD_VARS, errpos(field_name));
  ret = -EINVAL;
  goto err;
 }

 val = parse_atom(hist_data, file, field_name, &flags, ((void*)0));
 if (IS_ERR(val)) {
  hist_err(tr, HIST_ERR_FIELD_VAR_PARSE_FAIL, errpos(field_name));
  ret = PTR_ERR(val);
  goto err;
 }

 var = create_var(hist_data, file, field_name, val->size, val->type);
 if (IS_ERR(var)) {
  hist_err(tr, HIST_ERR_VAR_CREATE_FIND_FAIL, errpos(field_name));
  kfree(val);
  ret = PTR_ERR(var);
  goto err;
 }

 field_var = kzalloc(sizeof(struct field_var), GFP_KERNEL);
 if (!field_var) {
  kfree(val);
  kfree(var);
  ret = -ENOMEM;
  goto err;
 }

 field_var->var = var;
 field_var->val = val;
 out:
 return field_var;
 err:
 field_var = ERR_PTR(ret);
 goto out;
}
