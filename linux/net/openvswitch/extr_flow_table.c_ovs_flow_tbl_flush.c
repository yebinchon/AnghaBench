
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_instance {int dummy; } ;
struct flow_table {scalar_t__ ufid_count; scalar_t__ count; int last_rehash; int ufid_ti; int ti; } ;


 int ENOMEM ;
 int TBL_MIN_BUCKETS ;
 int __table_instance_destroy (struct table_instance*) ;
 int jiffies ;
 struct table_instance* ovsl_dereference (int ) ;
 int rcu_assign_pointer (int ,struct table_instance*) ;
 struct table_instance* table_instance_alloc (int ) ;
 int table_instance_destroy (struct table_instance*,struct table_instance*,int) ;

int ovs_flow_tbl_flush(struct flow_table *flow_table)
{
 struct table_instance *old_ti, *new_ti;
 struct table_instance *old_ufid_ti, *new_ufid_ti;

 new_ti = table_instance_alloc(TBL_MIN_BUCKETS);
 if (!new_ti)
  return -ENOMEM;
 new_ufid_ti = table_instance_alloc(TBL_MIN_BUCKETS);
 if (!new_ufid_ti)
  goto err_free_ti;

 old_ti = ovsl_dereference(flow_table->ti);
 old_ufid_ti = ovsl_dereference(flow_table->ufid_ti);

 rcu_assign_pointer(flow_table->ti, new_ti);
 rcu_assign_pointer(flow_table->ufid_ti, new_ufid_ti);
 flow_table->last_rehash = jiffies;
 flow_table->count = 0;
 flow_table->ufid_count = 0;

 table_instance_destroy(old_ti, old_ufid_ti, 1);
 return 0;

err_free_ti:
 __table_instance_destroy(new_ti);
 return -ENOMEM;
}
