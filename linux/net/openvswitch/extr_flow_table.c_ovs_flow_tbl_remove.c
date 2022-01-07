
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct table_instance {size_t node_ver; } ;
struct TYPE_4__ {int * node; } ;
struct TYPE_3__ {int * node; } ;
struct sw_flow {int mask; TYPE_2__ ufid_table; int id; TYPE_1__ flow_table; } ;
struct flow_table {scalar_t__ count; int ufid_count; int ufid_ti; int ti; } ;


 int BUG_ON (int) ;
 int flow_mask_remove (struct flow_table*,int ) ;
 int hlist_del_rcu (int *) ;
 scalar_t__ ovs_identifier_is_ufid (int *) ;
 struct table_instance* ovsl_dereference (int ) ;

void ovs_flow_tbl_remove(struct flow_table *table, struct sw_flow *flow)
{
 struct table_instance *ti = ovsl_dereference(table->ti);
 struct table_instance *ufid_ti = ovsl_dereference(table->ufid_ti);

 BUG_ON(table->count == 0);
 hlist_del_rcu(&flow->flow_table.node[ti->node_ver]);
 table->count--;
 if (ovs_identifier_is_ufid(&flow->id)) {
  hlist_del_rcu(&flow->ufid_table.node[ufid_ti->node_ver]);
  table->ufid_count--;
 }




 flow_mask_remove(table, flow->mask);
}
