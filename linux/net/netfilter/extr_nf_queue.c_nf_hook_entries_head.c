
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nf_hook_entries {int dummy; } ;
struct TYPE_2__ {int * hooks_ipv6; int * hooks_ipv4; int * hooks_bridge; } ;
struct net {TYPE_1__ nf; } ;





 int WARN_ON_ONCE (int) ;
 struct nf_hook_entries* rcu_dereference (int ) ;

__attribute__((used)) static struct nf_hook_entries *nf_hook_entries_head(const struct net *net, u8 pf, u8 hooknum)
{
 switch (pf) {




 case 129:
  return rcu_dereference(net->nf.hooks_ipv4[hooknum]);
 case 128:
  return rcu_dereference(net->nf.hooks_ipv6[hooknum]);
 default:
  WARN_ON_ONCE(1);
  return ((void*)0);
 }

 return ((void*)0);
}
