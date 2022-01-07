
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct table_instance {scalar_t__ n_buckets; int rcu; } ;
struct TYPE_3__ {int hash; } ;
struct sw_flow {TYPE_2__* mask; int key; TYPE_1__ flow_table; } ;
struct flow_table {scalar_t__ count; scalar_t__ last_rehash; int ti; } ;
struct TYPE_4__ {int range; } ;


 scalar_t__ REHASH_INTERVAL ;
 int call_rcu (int *,int ) ;
 int flow_hash (int *,int *) ;
 int flow_tbl_destroy_rcu_cb ;
 scalar_t__ jiffies ;
 struct table_instance* ovsl_dereference (int ) ;
 int rcu_assign_pointer (int ,struct table_instance*) ;
 struct table_instance* table_instance_expand (struct table_instance*,int) ;
 int table_instance_insert (struct table_instance*,struct sw_flow*) ;
 struct table_instance* table_instance_rehash (struct table_instance*,scalar_t__,int) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void flow_key_insert(struct flow_table *table, struct sw_flow *flow)
{
 struct table_instance *new_ti = ((void*)0);
 struct table_instance *ti;

 flow->flow_table.hash = flow_hash(&flow->key, &flow->mask->range);
 ti = ovsl_dereference(table->ti);
 table_instance_insert(ti, flow);
 table->count++;


 if (table->count > ti->n_buckets)
  new_ti = table_instance_expand(ti, 0);
 else if (time_after(jiffies, table->last_rehash + REHASH_INTERVAL))
  new_ti = table_instance_rehash(ti, ti->n_buckets, 0);

 if (new_ti) {
  rcu_assign_pointer(table->ti, new_ti);
  call_rcu(&ti->rcu, flow_tbl_destroy_rcu_cb);
  table->last_rehash = jiffies;
 }
}
