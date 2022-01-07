
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_trigger_data {size_t n_var_refs; struct hist_field** var_refs; } ;
struct hist_field {scalar_t__ var_ref_idx; int hist_data; } ;


 unsigned long HIST_FIELD_FL_VAR_REF ;
 struct hist_field* create_hist_field (int ,int *,unsigned long,int *) ;
 int destroy_hist_field (struct hist_field*,int ) ;
 scalar_t__ init_var_ref (struct hist_field*,struct hist_field*,char*,char*) ;

__attribute__((used)) static struct hist_field *create_var_ref(struct hist_trigger_data *hist_data,
      struct hist_field *var_field,
      char *system, char *event_name)
{
 unsigned long flags = HIST_FIELD_FL_VAR_REF;
 struct hist_field *ref_field;

 ref_field = create_hist_field(var_field->hist_data, ((void*)0), flags, ((void*)0));
 if (ref_field) {
  if (init_var_ref(ref_field, var_field, system, event_name)) {
   destroy_hist_field(ref_field, 0);
   return ((void*)0);
  }

  hist_data->var_refs[hist_data->n_var_refs] = ref_field;
  ref_field->var_ref_idx = hist_data->n_var_refs++;
 }

 return ref_field;
}
