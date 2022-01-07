
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct fib6_nh {int fib_nh_gw6; scalar_t__ fib_nh_gw_family; } ;
struct fib6_info {int fib6_flags; struct fib6_nh* fib6_nh; scalar_t__ nh; } ;


 int RTF_RA_ROUTER ;
 int fib6_nh_exceptions_clean_tohost (struct fib6_nh*,struct in6_addr*) ;
 scalar_t__ ipv6_addr_equal (struct in6_addr*,int *) ;

__attribute__((used)) static int fib6_clean_tohost(struct fib6_info *rt, void *arg)
{
 struct in6_addr *gateway = (struct in6_addr *)arg;
 struct fib6_nh *nh;


 if (rt->nh)
  return 0;

 nh = rt->fib6_nh;
 if (((rt->fib6_flags & RTF_RA_ROUTER) == RTF_RA_ROUTER) &&
     nh->fib_nh_gw_family && ipv6_addr_equal(gateway, &nh->fib_nh_gw6))
  return -1;





 fib6_nh_exceptions_clean_tohost(nh, gateway);

 return 0;
}
