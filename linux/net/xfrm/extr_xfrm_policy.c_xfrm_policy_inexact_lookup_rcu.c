
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct xfrm_pol_inexact_key {int net; int if_id; int dir; int type; int family; } ;
struct xfrm_pol_inexact_bin {int dummy; } ;
struct net {int dummy; } ;


 struct xfrm_pol_inexact_bin* rhashtable_lookup (int *,struct xfrm_pol_inexact_key*,int ) ;
 int write_pnet (int *,struct net*) ;
 int xfrm_pol_inexact_params ;
 int xfrm_policy_inexact_table ;

__attribute__((used)) static struct xfrm_pol_inexact_bin *
xfrm_policy_inexact_lookup_rcu(struct net *net, u8 type, u16 family,
          u8 dir, u32 if_id)
{
 struct xfrm_pol_inexact_key k = {
  .family = family,
  .type = type,
  .dir = dir,
  .if_id = if_id,
 };

 write_pnet(&k.net, net);

 return rhashtable_lookup(&xfrm_policy_inexact_table, &k,
     xfrm_pol_inexact_params);
}
