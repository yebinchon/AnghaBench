
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u8 ;
struct TYPE_2__ {int prefixlen_d; int daddr; int prefixlen_s; int saddr; } ;
struct xfrm_policy {int family; TYPE_1__ selector; } ;


 int xfrm_pol_inexact_addr_use_any_list (int const*,int ,int ) ;

__attribute__((used)) static bool
xfrm_policy_inexact_insert_use_any_list(const struct xfrm_policy *policy)
{
 const xfrm_address_t *addr;
 bool saddr_any, daddr_any;
 u8 prefixlen;

 addr = &policy->selector.saddr;
 prefixlen = policy->selector.prefixlen_s;

 saddr_any = xfrm_pol_inexact_addr_use_any_list(addr,
             policy->family,
             prefixlen);
 addr = &policy->selector.daddr;
 prefixlen = policy->selector.prefixlen_d;
 daddr_any = xfrm_pol_inexact_addr_use_any_list(addr,
             policy->family,
             prefixlen);
 return saddr_any && daddr_any;
}
