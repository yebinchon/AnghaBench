
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_event_file {int dummy; } ;
struct hist_trigger_data {int map; int remove; } ;
struct TYPE_2__ {int idx; struct hist_field* name; struct hist_trigger_data* hist_data; } ;
struct hist_field {int size; struct hist_field* type; TYPE_1__ var; struct hist_trigger_data* hist_data; int flags; } ;


 int EINVAL ;
 int ENOMEM ;
 struct hist_field* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int HIST_FIELD_FL_VAR ;
 scalar_t__ find_var (struct hist_trigger_data*,struct trace_event_file*,char*) ;
 int kfree (struct hist_field*) ;
 void* kstrdup (char const*,int ) ;
 struct hist_field* kzalloc (int,int ) ;
 int tracing_map_add_var (int ) ;

__attribute__((used)) static struct hist_field *create_var(struct hist_trigger_data *hist_data,
         struct trace_event_file *file,
         char *name, int size, const char *type)
{
 struct hist_field *var;
 int idx;

 if (find_var(hist_data, file, name) && !hist_data->remove) {
  var = ERR_PTR(-EINVAL);
  goto out;
 }

 var = kzalloc(sizeof(struct hist_field), GFP_KERNEL);
 if (!var) {
  var = ERR_PTR(-ENOMEM);
  goto out;
 }

 idx = tracing_map_add_var(hist_data->map);
 if (idx < 0) {
  kfree(var);
  var = ERR_PTR(-EINVAL);
  goto out;
 }

 var->flags = HIST_FIELD_FL_VAR;
 var->var.idx = idx;
 var->var.hist_data = var->hist_data = hist_data;
 var->size = size;
 var->var.name = kstrdup(name, GFP_KERNEL);
 var->type = kstrdup(type, GFP_KERNEL);
 if (!var->var.name || !var->type) {
  kfree(var->var.name);
  kfree(var->type);
  kfree(var);
  var = ERR_PTR(-ENOMEM);
 }
 out:
 return var;
}
