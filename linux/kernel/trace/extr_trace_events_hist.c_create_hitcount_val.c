
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_trigger_data {scalar_t__ n_vals; int n_fields; int * fields; } ;


 int EINVAL ;
 int ENOMEM ;
 int HIST_FIELD_FL_HITCOUNT ;
 size_t HITCOUNT_IDX ;
 scalar_t__ TRACING_MAP_VALS_MAX ;
 scalar_t__ WARN_ON (int) ;
 int create_hist_field (struct hist_trigger_data*,int *,int ,int *) ;

__attribute__((used)) static int create_hitcount_val(struct hist_trigger_data *hist_data)
{
 hist_data->fields[HITCOUNT_IDX] =
  create_hist_field(hist_data, ((void*)0), HIST_FIELD_FL_HITCOUNT, ((void*)0));
 if (!hist_data->fields[HITCOUNT_IDX])
  return -ENOMEM;

 hist_data->n_vals++;
 hist_data->n_fields++;

 if (WARN_ON(hist_data->n_vals > TRACING_MAP_VALS_MAX))
  return -EINVAL;

 return 0;
}
