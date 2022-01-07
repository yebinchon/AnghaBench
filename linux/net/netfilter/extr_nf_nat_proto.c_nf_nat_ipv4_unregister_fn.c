
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_hook_ops {int pf; } ;
struct net {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int nf_nat_ipv4_ops ;
 int nf_nat_unregister_fn (struct net*,int ,struct nf_hook_ops const*,int ) ;

void nf_nat_ipv4_unregister_fn(struct net *net, const struct nf_hook_ops *ops)
{
 nf_nat_unregister_fn(net, ops->pf, ops, ARRAY_SIZE(nf_nat_ipv4_ops));
}
