
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_nat_helper {int module; } ;
struct nf_conntrack_helper {int nat_mod_name; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int module_put (int ) ;
 struct nf_conntrack_nat_helper* nf_conntrack_nat_helper_find (int ) ;

void nf_nat_helper_put(struct nf_conntrack_helper *helper)
{
 struct nf_conntrack_nat_helper *nat;

 nat = nf_conntrack_nat_helper_find(helper->nat_mod_name);
 if (WARN_ON_ONCE(!nat))
  return;

 module_put(nat->module);
}
