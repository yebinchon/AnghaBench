
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_hook_ops {int dummy; } ;
struct net {int dummy; } ;
struct ebt_table {int valid_hooks; } ;


 int __ebt_unregister_table (struct net*,struct ebt_table*) ;
 int hweight32 (int ) ;
 int nf_unregister_net_hooks (struct net*,struct nf_hook_ops const*,int ) ;

void ebt_unregister_table(struct net *net, struct ebt_table *table,
     const struct nf_hook_ops *ops)
{
 nf_unregister_net_hooks(net, ops, hweight32(table->valid_hooks));
 __ebt_unregister_table(net, table);
}
