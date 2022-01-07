
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_elt_data {struct hist_elt_data* comm; struct hist_elt_data** field_var_str; } ;


 unsigned int SYNTH_FIELDS_MAX ;
 int kfree (struct hist_elt_data*) ;

__attribute__((used)) static void hist_elt_data_free(struct hist_elt_data *elt_data)
{
 unsigned int i;

 for (i = 0; i < SYNTH_FIELDS_MAX; i++)
  kfree(elt_data->field_var_str[i]);

 kfree(elt_data->comm);
 kfree(elt_data);
}
