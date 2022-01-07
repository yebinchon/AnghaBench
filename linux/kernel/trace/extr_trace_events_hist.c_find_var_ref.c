
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_trigger_data {unsigned int n_var_refs; struct hist_field** var_refs; } ;
struct hist_field {int dummy; } ;


 scalar_t__ check_field_for_var_ref (struct hist_field*,struct hist_trigger_data*,unsigned int) ;

__attribute__((used)) static struct hist_field *find_var_ref(struct hist_trigger_data *hist_data,
           struct hist_trigger_data *var_data,
           unsigned int var_idx)
{
 struct hist_field *hist_field;
 unsigned int i;

 for (i = 0; i < hist_data->n_var_refs; i++) {
  hist_field = hist_data->var_refs[i];
  if (check_field_for_var_ref(hist_field, var_data, var_idx))
   return hist_field;
 }

 return ((void*)0);
}
