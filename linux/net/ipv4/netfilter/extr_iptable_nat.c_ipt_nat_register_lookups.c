
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * nf_nat_ipv4_ops ;
 int nf_nat_ipv4_register_fn (struct net*,int *) ;
 int nf_nat_ipv4_unregister_fn (struct net*,int *) ;

__attribute__((used)) static int ipt_nat_register_lookups(struct net *net)
{
 int i, ret;

 for (i = 0; i < ARRAY_SIZE(nf_nat_ipv4_ops); i++) {
  ret = nf_nat_ipv4_register_fn(net, &nf_nat_ipv4_ops[i]);
  if (ret) {
   while (i)
    nf_nat_ipv4_unregister_fn(net, &nf_nat_ipv4_ops[--i]);

   return ret;
  }
 }

 return 0;
}
