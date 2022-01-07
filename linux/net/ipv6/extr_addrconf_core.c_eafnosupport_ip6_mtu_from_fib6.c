
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct in6_addr {int dummy; } ;
struct fib6_result {int dummy; } ;



__attribute__((used)) static u32
eafnosupport_ip6_mtu_from_fib6(const struct fib6_result *res,
          const struct in6_addr *daddr,
          const struct in6_addr *saddr)
{
 return 0;
}
