
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct trace_array {int dummy; } ;
struct hist_trigger_data {TYPE_3__* attrs; TYPE_1__* event_file; } ;
struct TYPE_5__ {char** name; char** expr; unsigned int n_vars; } ;
struct TYPE_6__ {unsigned int n_assignments; char** assignment_str; TYPE_2__ var_defs; } ;
struct TYPE_4__ {struct trace_array* tr; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HIST_ERR_MALFORMED_ASSIGNMENT ;
 int HIST_ERR_TOO_MANY_VARS ;
 unsigned int TRACING_MAP_VARS_MAX ;
 int errpos (char*) ;
 int free_var_defs (struct hist_trigger_data*) ;
 int hist_err (struct trace_array*,int ,int ) ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int parse_var_defs(struct hist_trigger_data *hist_data)
{
 struct trace_array *tr = hist_data->event_file->tr;
 char *s, *str, *var_name, *field_str;
 unsigned int i, j, n_vars = 0;
 int ret = 0;

 for (i = 0; i < hist_data->attrs->n_assignments; i++) {
  str = hist_data->attrs->assignment_str[i];
  for (j = 0; j < TRACING_MAP_VARS_MAX; j++) {
   field_str = strsep(&str, ",");
   if (!field_str)
    break;

   var_name = strsep(&field_str, "=");
   if (!var_name || !field_str) {
    hist_err(tr, HIST_ERR_MALFORMED_ASSIGNMENT,
      errpos(var_name));
    ret = -EINVAL;
    goto free;
   }

   if (n_vars == TRACING_MAP_VARS_MAX) {
    hist_err(tr, HIST_ERR_TOO_MANY_VARS, errpos(var_name));
    ret = -EINVAL;
    goto free;
   }

   s = kstrdup(var_name, GFP_KERNEL);
   if (!s) {
    ret = -ENOMEM;
    goto free;
   }
   hist_data->attrs->var_defs.name[n_vars] = s;

   s = kstrdup(field_str, GFP_KERNEL);
   if (!s) {
    kfree(hist_data->attrs->var_defs.name[n_vars]);
    ret = -ENOMEM;
    goto free;
   }
   hist_data->attrs->var_defs.expr[n_vars++] = s;

   hist_data->attrs->var_defs.n_vars = n_vars;
  }
 }

 return ret;
 free:
 free_var_defs(hist_data);

 return ret;
}
