
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_hook_ops {int pf; } ;
struct net {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int nf_nat_ipv4_ops ;
 int nf_nat_register_fn (struct net*,int ,struct nf_hook_ops const*,int ,int ) ;

int nf_nat_ipv4_register_fn(struct net *net, const struct nf_hook_ops *ops)
{
 return nf_nat_register_fn(net, ops->pf, ops, nf_nat_ipv4_ops,
      ARRAY_SIZE(nf_nat_ipv4_ops));
}
