
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct net {int dummy; } ;
struct ebt_table {TYPE_1__* private; int me; int list; } ;
struct TYPE_4__ {struct TYPE_4__* entries; scalar_t__ nentries; int entries_size; } ;


 int EBT_ENTRY_ITERATE (TYPE_1__*,int ,int ,struct net*,int *) ;
 int ebt_cleanup_entry ;
 int ebt_free_table_info (TYPE_1__*) ;
 int ebt_mutex ;
 int kfree (struct ebt_table*) ;
 int list_del (int *) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfree (TYPE_1__*) ;

__attribute__((used)) static void __ebt_unregister_table(struct net *net, struct ebt_table *table)
{
 mutex_lock(&ebt_mutex);
 list_del(&table->list);
 mutex_unlock(&ebt_mutex);
 EBT_ENTRY_ITERATE(table->private->entries, table->private->entries_size,
     ebt_cleanup_entry, net, ((void*)0));
 if (table->private->nentries)
  module_put(table->me);
 vfree(table->private->entries);
 ebt_free_table_info(table->private);
 vfree(table->private);
 kfree(table);
}
