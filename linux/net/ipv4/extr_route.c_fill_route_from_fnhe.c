
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int expires; } ;
struct rtable {int rt_uses_gateway; scalar_t__ rt_gw4; int rt_gw_family; int rt_flags; TYPE_1__ dst; int rt_mtu_locked; int rt_pmtu; } ;
struct fib_nh_exception {scalar_t__ fnhe_gw; int fnhe_expires; int fnhe_mtu_locked; int fnhe_pmtu; } ;


 int AF_INET ;
 int RTCF_REDIRECTED ;

__attribute__((used)) static void fill_route_from_fnhe(struct rtable *rt, struct fib_nh_exception *fnhe)
{
 rt->rt_pmtu = fnhe->fnhe_pmtu;
 rt->rt_mtu_locked = fnhe->fnhe_mtu_locked;
 rt->dst.expires = fnhe->fnhe_expires;

 if (fnhe->fnhe_gw) {
  rt->rt_flags |= RTCF_REDIRECTED;
  rt->rt_uses_gateway = 1;
  rt->rt_gw_family = AF_INET;
  rt->rt_gw4 = fnhe->fnhe_gw;
 }
}
