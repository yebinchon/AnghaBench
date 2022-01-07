
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_trigger_data {unsigned int n_field_vars; int * field_vars; } ;


 int destroy_field_var (int ) ;

__attribute__((used)) static void destroy_field_vars(struct hist_trigger_data *hist_data)
{
 unsigned int i;

 for (i = 0; i < hist_data->n_field_vars; i++)
  destroy_field_var(hist_data->field_vars[i]);
}
