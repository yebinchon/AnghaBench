
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_instance {int dummy; } ;
struct flow_table {scalar_t__ ufid_count; scalar_t__ count; int last_rehash; int mask_list; int ufid_ti; int ti; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int TBL_MIN_BUCKETS ;
 int __table_instance_destroy (struct table_instance*) ;
 int jiffies ;
 int rcu_assign_pointer (int ,struct table_instance*) ;
 struct table_instance* table_instance_alloc (int ) ;

int ovs_flow_tbl_init(struct flow_table *table)
{
 struct table_instance *ti, *ufid_ti;

 ti = table_instance_alloc(TBL_MIN_BUCKETS);

 if (!ti)
  return -ENOMEM;

 ufid_ti = table_instance_alloc(TBL_MIN_BUCKETS);
 if (!ufid_ti)
  goto free_ti;

 rcu_assign_pointer(table->ti, ti);
 rcu_assign_pointer(table->ufid_ti, ufid_ti);
 INIT_LIST_HEAD(&table->mask_list);
 table->last_rehash = jiffies;
 table->count = 0;
 table->ufid_count = 0;
 return 0;

free_ti:
 __table_instance_destroy(ti);
 return -ENOMEM;
}
