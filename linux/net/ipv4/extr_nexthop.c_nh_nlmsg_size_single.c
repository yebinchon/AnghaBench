
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nhc_lwtstate; } ;
struct TYPE_6__ {int fib_nh_gw_family; } ;
struct TYPE_5__ {int fib_nh_gw_family; } ;
struct nh_info {int family; TYPE_1__ fib_nhc; TYPE_3__ fib6_nh; TYPE_2__ fib_nh; } ;
struct nexthop {int nh_info; } ;
struct in6_addr {int dummy; } ;




 scalar_t__ lwtunnel_get_encap_size (scalar_t__) ;
 size_t nla_total_size (int) ;
 struct nh_info* rtnl_dereference (int ) ;

__attribute__((used)) static size_t nh_nlmsg_size_single(struct nexthop *nh)
{
 struct nh_info *nhi = rtnl_dereference(nh->nh_info);
 size_t sz;




 sz = nla_total_size(4);

 switch (nhi->family) {
 case 129:
  if (nhi->fib_nh.fib_nh_gw_family)
   sz += nla_total_size(4);
  break;

 case 128:

  if (nhi->fib6_nh.fib_nh_gw_family)
   sz += nla_total_size(sizeof(const struct in6_addr));
  break;
 }

 if (nhi->fib_nhc.nhc_lwtstate) {
  sz += lwtunnel_get_encap_size(nhi->fib_nhc.nhc_lwtstate);
  sz += nla_total_size(2);
 }

 return sz;
}
