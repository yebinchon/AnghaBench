
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neigh_table {int * stats; int id; int * phash_buckets; int * nht; int entries; int proxy_queue; int proxy_timer; int gc_work; } ;
struct TYPE_4__ {int proc_net_stat; } ;
struct TYPE_3__ {int rcu; } ;


 scalar_t__ atomic_read (int *) ;
 int call_rcu (int *,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int free_percpu (int *) ;
 TYPE_2__ init_net ;
 int kfree (int *) ;
 int neigh_hash_free_rcu ;
 int neigh_ifdown (struct neigh_table*,int *) ;
 int ** neigh_tables ;
 int pneigh_queue_purge (int *) ;
 int pr_crit (char*) ;
 TYPE_1__* rcu_dereference_protected (int *,int) ;
 int remove_proc_entry (int ,int ) ;

int neigh_table_clear(int index, struct neigh_table *tbl)
{
 neigh_tables[index] = ((void*)0);

 cancel_delayed_work_sync(&tbl->gc_work);
 del_timer_sync(&tbl->proxy_timer);
 pneigh_queue_purge(&tbl->proxy_queue);
 neigh_ifdown(tbl, ((void*)0));
 if (atomic_read(&tbl->entries))
  pr_crit("neighbour leakage\n");

 call_rcu(&rcu_dereference_protected(tbl->nht, 1)->rcu,
   neigh_hash_free_rcu);
 tbl->nht = ((void*)0);

 kfree(tbl->phash_buckets);
 tbl->phash_buckets = ((void*)0);

 remove_proc_entry(tbl->id, init_net.proc_net_stat);

 free_percpu(tbl->stats);
 tbl->stats = ((void*)0);

 return 0;
}
