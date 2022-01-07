
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_trigger_data {unsigned int n_fields; unsigned int n_vals; struct hist_field** fields; } ;
struct hist_field {scalar_t__ size; scalar_t__ is_signed; int type; } ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool compatible_keys(struct hist_trigger_data *target_hist_data,
       struct hist_trigger_data *hist_data,
       unsigned int n_keys)
{
 struct hist_field *target_hist_field, *hist_field;
 unsigned int n, i, j;

 if (hist_data->n_fields - hist_data->n_vals != n_keys)
  return 0;

 i = hist_data->n_vals;
 j = target_hist_data->n_vals;

 for (n = 0; n < n_keys; n++) {
  hist_field = hist_data->fields[i + n];
  target_hist_field = target_hist_data->fields[j + n];

  if (strcmp(hist_field->type, target_hist_field->type) != 0)
   return 0;
  if (hist_field->size != target_hist_field->size)
   return 0;
  if (hist_field->is_signed != target_hist_field->is_signed)
   return 0;
 }

 return 1;
}
