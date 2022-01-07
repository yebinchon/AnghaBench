
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table_instance {scalar_t__ n_buckets; int rcu; } ;
struct TYPE_2__ {int hash; } ;
struct sw_flow {int id; TYPE_1__ ufid_table; } ;
struct flow_table {scalar_t__ ufid_count; int ufid_ti; } ;


 int call_rcu (int *,int ) ;
 int flow_tbl_destroy_rcu_cb ;
 struct table_instance* ovsl_dereference (int ) ;
 int rcu_assign_pointer (int ,struct table_instance*) ;
 struct table_instance* table_instance_expand (struct table_instance*,int) ;
 int ufid_hash (int *) ;
 int ufid_table_instance_insert (struct table_instance*,struct sw_flow*) ;

__attribute__((used)) static void flow_ufid_insert(struct flow_table *table, struct sw_flow *flow)
{
 struct table_instance *ti;

 flow->ufid_table.hash = ufid_hash(&flow->id);
 ti = ovsl_dereference(table->ufid_ti);
 ufid_table_instance_insert(ti, flow);
 table->ufid_count++;


 if (table->ufid_count > ti->n_buckets) {
  struct table_instance *new_ti;

  new_ti = table_instance_expand(ti, 1);
  if (new_ti) {
   rcu_assign_pointer(table->ufid_ti, new_ti);
   call_rcu(&ti->rcu, flow_tbl_destroy_rcu_cb);
  }
 }
}
