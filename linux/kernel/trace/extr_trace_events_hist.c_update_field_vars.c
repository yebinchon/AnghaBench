
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_elt {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct hist_trigger_data {int n_field_vars; int field_vars; } ;


 int __update_field_vars (struct tracing_map_elt*,struct ring_buffer_event*,void*,int ,int ,int ) ;

__attribute__((used)) static void update_field_vars(struct hist_trigger_data *hist_data,
         struct tracing_map_elt *elt,
         struct ring_buffer_event *rbe,
         void *rec)
{
 __update_field_vars(elt, rbe, rec, hist_data->field_vars,
       hist_data->n_field_vars, 0);
}
