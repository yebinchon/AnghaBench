
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_elt {struct hist_elt_data* private_data; } ;
struct hist_elt_data {int dummy; } ;


 int hist_elt_data_free (struct hist_elt_data*) ;

__attribute__((used)) static void hist_trigger_elt_data_free(struct tracing_map_elt *elt)
{
 struct hist_elt_data *elt_data = elt->private_data;

 hist_elt_data_free(elt_data);
}
