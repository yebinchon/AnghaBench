
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_flowtable {int rhashtable; int gc_work; int list; } ;


 int cancel_delayed_work_sync (int *) ;
 int flowtable_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_flow_offload_gc_step ;
 int nf_flow_table_do_cleanup ;
 int nf_flow_table_iterate (struct nf_flowtable*,int ,struct nf_flowtable*) ;
 int rhashtable_destroy (int *) ;

void nf_flow_table_free(struct nf_flowtable *flow_table)
{
 mutex_lock(&flowtable_lock);
 list_del(&flow_table->list);
 mutex_unlock(&flowtable_lock);
 cancel_delayed_work_sync(&flow_table->gc_work);
 nf_flow_table_iterate(flow_table, nf_flow_table_do_cleanup, ((void*)0));
 nf_flow_table_iterate(flow_table, nf_flow_offload_gc_step, flow_table);
 rhashtable_destroy(&flow_table->rhashtable);
}
