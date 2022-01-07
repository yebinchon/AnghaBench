
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_trigger_data {int dummy; } ;
struct TYPE_2__ {unsigned int idx; struct hist_trigger_data* hist_data; } ;
struct hist_field {int flags; TYPE_1__ var; } ;


 int HIST_FIELD_FL_VAR_REF ;
 int WARN_ON (int) ;

__attribute__((used)) static struct hist_field *
check_field_for_var_ref(struct hist_field *hist_field,
   struct hist_trigger_data *var_data,
   unsigned int var_idx)
{
 WARN_ON(!(hist_field && hist_field->flags & HIST_FIELD_FL_VAR_REF));

 if (hist_field && hist_field->var.idx == var_idx &&
     hist_field->var.hist_data == var_data)
  return hist_field;

 return ((void*)0);
}
