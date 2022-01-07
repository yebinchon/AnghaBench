
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ebt_table_info {int nentries; int entries_size; struct ebt_table_info* entries; int counters; int * chainstack; } ;
struct ebt_table {int (* check ) (struct ebt_table_info*,int ) ;int lock; struct ebt_table_info* private; int me; } ;
struct ebt_replace {int num_counters; int nentries; int name; int counters; int valid_hooks; } ;
struct ebt_counter {int nentries; int entries_size; struct ebt_counter* entries; int counters; int * chainstack; } ;


 int AF_BRIDGE ;
 int AUDIT_NETFILTER_CFG ;
 int EBT_ENTRY_ITERATE (struct ebt_table_info*,int ,int ,struct net*,int *) ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int audit_context () ;
 scalar_t__ audit_enabled ;
 int audit_log (int ,int ,int ,char*,int ,int ,int ) ;
 scalar_t__ copy_to_user (int ,struct ebt_table_info*,int) ;
 int ebt_cleanup_entry ;
 int ebt_free_table_info (struct ebt_table_info*) ;
 int ebt_mutex ;
 int ebt_verify_pointers (struct ebt_replace*,struct ebt_table_info*) ;
 struct ebt_table* find_table_lock (struct net*,int ,int*,int *) ;
 int get_counters (int ,struct ebt_table_info*,int) ;
 int module_put (int ) ;
 int mutex_unlock (int *) ;
 int net_warn_ratelimited (char*) ;
 int stub1 (struct ebt_table_info*,int ) ;
 int translate_table (struct net*,int ,struct ebt_table_info*) ;
 int try_module_get (int ) ;
 int vfree (struct ebt_table_info*) ;
 struct ebt_table_info* vmalloc (unsigned long) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int do_replace_finish(struct net *net, struct ebt_replace *repl,
         struct ebt_table_info *newinfo)
{
 int ret;
 struct ebt_counter *counterstmp = ((void*)0);

 struct ebt_table_info *table;
 struct ebt_table *t;




 if (repl->num_counters) {
  unsigned long size = repl->num_counters * sizeof(*counterstmp);
  counterstmp = vmalloc(size);
  if (!counterstmp)
   return -ENOMEM;
 }

 newinfo->chainstack = ((void*)0);
 ret = ebt_verify_pointers(repl, newinfo);
 if (ret != 0)
  goto free_counterstmp;

 ret = translate_table(net, repl->name, newinfo);

 if (ret != 0)
  goto free_counterstmp;

 t = find_table_lock(net, repl->name, &ret, &ebt_mutex);
 if (!t) {
  ret = -ENOENT;
  goto free_iterate;
 }


 if (t->check && (ret = t->check(newinfo, repl->valid_hooks)))
  goto free_unlock;

 if (repl->num_counters && repl->num_counters != t->private->nentries) {
  ret = -EINVAL;
  goto free_unlock;
 }


 table = t->private;

 if (!table->nentries && newinfo->nentries && !try_module_get(t->me)) {
  ret = -ENOENT;
  goto free_unlock;
 } else if (table->nentries && !newinfo->nentries)
  module_put(t->me);

 write_lock_bh(&t->lock);
 if (repl->num_counters)
  get_counters(t->private->counters, counterstmp,
     t->private->nentries);

 t->private = newinfo;
 write_unlock_bh(&t->lock);
 mutex_unlock(&ebt_mutex);





 if (repl->num_counters &&
    copy_to_user(repl->counters, counterstmp,
    repl->num_counters * sizeof(struct ebt_counter))) {

  net_warn_ratelimited("ebtables: counters copy to user failed while replacing table\n");
 }


 EBT_ENTRY_ITERATE(table->entries, table->entries_size,
     ebt_cleanup_entry, net, ((void*)0));

 vfree(table->entries);
 ebt_free_table_info(table);
 vfree(table);
 vfree(counterstmp);
 return ret;

free_unlock:
 mutex_unlock(&ebt_mutex);
free_iterate:
 EBT_ENTRY_ITERATE(newinfo->entries, newinfo->entries_size,
     ebt_cleanup_entry, net, ((void*)0));
free_counterstmp:
 vfree(counterstmp);

 ebt_free_table_info(newinfo);
 return ret;
}
