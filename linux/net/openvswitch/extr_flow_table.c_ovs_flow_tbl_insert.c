
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_mask {int dummy; } ;
struct sw_flow {int id; } ;
struct flow_table {int dummy; } ;


 int flow_key_insert (struct flow_table*,struct sw_flow*) ;
 int flow_mask_insert (struct flow_table*,struct sw_flow*,struct sw_flow_mask const*) ;
 int flow_ufid_insert (struct flow_table*,struct sw_flow*) ;
 scalar_t__ ovs_identifier_is_ufid (int *) ;

int ovs_flow_tbl_insert(struct flow_table *table, struct sw_flow *flow,
   const struct sw_flow_mask *mask)
{
 int err;

 err = flow_mask_insert(table, flow, mask);
 if (err)
  return err;
 flow_key_insert(table, flow);
 if (ovs_identifier_is_ufid(&flow->id))
  flow_ufid_insert(table, flow);

 return 0;
}
