
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_table {int valid_hooks; } ;
struct nf_hook_ops {int dummy; } ;
struct net {int dummy; } ;


 int __ip6t_unregister_table (struct net*,struct xt_table*) ;
 int hweight32 (int ) ;
 int nf_unregister_net_hooks (struct net*,struct nf_hook_ops const*,int ) ;

void ip6t_unregister_table(struct net *net, struct xt_table *table,
      const struct nf_hook_ops *ops)
{
 if (ops)
  nf_unregister_net_hooks(net, ops, hweight32(table->valid_hooks));
 __ip6t_unregister_table(net, table);
}
