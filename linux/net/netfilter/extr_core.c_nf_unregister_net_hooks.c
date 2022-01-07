
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_hook_ops {int dummy; } ;
struct net {int dummy; } ;


 int nf_unregister_net_hook (struct net*,struct nf_hook_ops const*) ;

void nf_unregister_net_hooks(struct net *net, const struct nf_hook_ops *reg,
        unsigned int hookcount)
{
 unsigned int i;

 for (i = 0; i < hookcount; i++)
  nf_unregister_net_hook(net, &reg[i]);
}
