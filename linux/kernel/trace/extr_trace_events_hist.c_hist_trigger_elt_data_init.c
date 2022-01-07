
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_elt {struct hist_elt_data* private_data; } ;
struct hist_elt_data {scalar_t__ comm; } ;


 int current ;
 int save_comm (scalar_t__,int ) ;

__attribute__((used)) static void hist_trigger_elt_data_init(struct tracing_map_elt *elt)
{
 struct hist_elt_data *elt_data = elt->private_data;

 if (elt_data->comm)
  save_comm(elt_data->comm, current);
}
