
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_trigger_data {int dummy; } ;
struct hist_field {int var_ref_idx; int event_name; int system; struct hist_field** operands; int fn; } ;


 unsigned long HIST_FIELD_FL_ALIAS ;
 unsigned long HIST_FIELD_FL_VAR ;
 struct hist_field* create_hist_field (struct hist_trigger_data*,int *,unsigned long,char*) ;
 int destroy_hist_field (struct hist_field*,int ) ;
 scalar_t__ init_var_ref (struct hist_field*,struct hist_field*,int ,int ) ;

__attribute__((used)) static struct hist_field *create_alias(struct hist_trigger_data *hist_data,
           struct hist_field *var_ref,
           char *var_name)
{
 struct hist_field *alias = ((void*)0);
 unsigned long flags = HIST_FIELD_FL_ALIAS | HIST_FIELD_FL_VAR;

 alias = create_hist_field(hist_data, ((void*)0), flags, var_name);
 if (!alias)
  return ((void*)0);

 alias->fn = var_ref->fn;
 alias->operands[0] = var_ref;

 if (init_var_ref(alias, var_ref, var_ref->system, var_ref->event_name)) {
  destroy_hist_field(alias, 0);
  return ((void*)0);
 }

 alias->var_ref_idx = var_ref->var_ref_idx;

 return alias;
}
