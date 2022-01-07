
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_trigger_data {unsigned int n_var_refs; TYPE_1__** var_refs; int ** fields; } ;
struct TYPE_2__ {int flags; } ;


 unsigned int HIST_FIELDS_MAX ;
 int HIST_FIELD_FL_VAR_REF ;
 int WARN_ON (int) ;
 int __destroy_hist_field (TYPE_1__*) ;
 int destroy_hist_field (int *,int ) ;

__attribute__((used)) static void destroy_hist_fields(struct hist_trigger_data *hist_data)
{
 unsigned int i;

 for (i = 0; i < HIST_FIELDS_MAX; i++) {
  if (hist_data->fields[i]) {
   destroy_hist_field(hist_data->fields[i], 0);
   hist_data->fields[i] = ((void*)0);
  }
 }

 for (i = 0; i < hist_data->n_var_refs; i++) {
  WARN_ON(!(hist_data->var_refs[i]->flags & HIST_FIELD_FL_VAR_REF));
  __destroy_hist_field(hist_data->var_refs[i]);
  hist_data->var_refs[i] = ((void*)0);
 }
}
