
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_instance {int dummy; } ;
struct flow_table {int ufid_ti; int ti; } ;


 struct table_instance* rcu_dereference_raw (int ) ;
 int table_instance_destroy (struct table_instance*,struct table_instance*,int) ;

void ovs_flow_tbl_destroy(struct flow_table *table)
{
 struct table_instance *ti = rcu_dereference_raw(table->ti);
 struct table_instance *ufid_ti = rcu_dereference_raw(table->ufid_ti);

 table_instance_destroy(ti, ufid_ti, 0);
}
