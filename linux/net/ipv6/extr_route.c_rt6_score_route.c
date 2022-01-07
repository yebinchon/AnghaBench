
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fib6_nh {scalar_t__ fib_nh_gw_family; TYPE_1__* fib_nh_dev; } ;
struct TYPE_2__ {int ifindex; } ;


 int IPV6_DECODE_PREF (int ) ;
 int IPV6_EXTRACT_PREF (int) ;
 int RT6_LOOKUP_F_IFACE ;
 int RT6_LOOKUP_F_REACHABLE ;
 int RT6_NUD_FAIL_HARD ;
 int RTF_NONEXTHOP ;
 int rt6_check_neigh (struct fib6_nh const*) ;

__attribute__((used)) static int rt6_score_route(const struct fib6_nh *nh, u32 fib6_flags, int oif,
      int strict)
{
 int m = 0;

 if (!oif || nh->fib_nh_dev->ifindex == oif)
  m = 2;

 if (!m && (strict & RT6_LOOKUP_F_IFACE))
  return RT6_NUD_FAIL_HARD;



 if ((strict & RT6_LOOKUP_F_REACHABLE) &&
     !(fib6_flags & RTF_NONEXTHOP) && nh->fib_nh_gw_family) {
  int n = rt6_check_neigh(nh);
  if (n < 0)
   return n;
 }
 return m;
}
