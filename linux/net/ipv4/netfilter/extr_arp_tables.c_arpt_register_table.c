
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_table_info {void* entries; int member_0; } ;
struct xt_table {int valid_hooks; } ;
struct nf_hook_ops {int dummy; } ;
struct net {int dummy; } ;
struct arpt_replace {int size; int entries; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct xt_table*) ;
 int PTR_ERR (struct xt_table*) ;
 int WRITE_ONCE (struct xt_table*,struct xt_table*) ;
 int __arpt_unregister_table (struct xt_table*) ;
 int hweight32 (int ) ;
 int memcpy (void*,int ,int ) ;
 int nf_register_net_hooks (struct net*,struct nf_hook_ops const*,int ) ;
 int translate_table (struct xt_table_info*,void*,struct arpt_replace const*) ;
 struct xt_table_info* xt_alloc_table_info (int ) ;
 int xt_free_table_info (struct xt_table_info*) ;
 struct xt_table* xt_register_table (struct net*,struct xt_table const*,struct xt_table_info*,struct xt_table_info*) ;

int arpt_register_table(struct net *net,
   const struct xt_table *table,
   const struct arpt_replace *repl,
   const struct nf_hook_ops *ops,
   struct xt_table **res)
{
 int ret;
 struct xt_table_info *newinfo;
 struct xt_table_info bootstrap = {0};
 void *loc_cpu_entry;
 struct xt_table *new_table;

 newinfo = xt_alloc_table_info(repl->size);
 if (!newinfo)
  return -ENOMEM;

 loc_cpu_entry = newinfo->entries;
 memcpy(loc_cpu_entry, repl->entries, repl->size);

 ret = translate_table(newinfo, loc_cpu_entry, repl);
 if (ret != 0)
  goto out_free;

 new_table = xt_register_table(net, table, &bootstrap, newinfo);
 if (IS_ERR(new_table)) {
  ret = PTR_ERR(new_table);
  goto out_free;
 }


 WRITE_ONCE(*res, new_table);

 ret = nf_register_net_hooks(net, ops, hweight32(table->valid_hooks));
 if (ret != 0) {
  __arpt_unregister_table(new_table);
  *res = ((void*)0);
 }

 return ret;

out_free:
 xt_free_table_info(newinfo);
 return ret;
}
