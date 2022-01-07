
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int input; int output; } ;
struct rtable {unsigned int rt_flags; TYPE_1__ dst; int rt_uncached; scalar_t__ rt_gw4; scalar_t__ rt_gw_family; scalar_t__ rt_uses_gateway; scalar_t__ rt_mtu_locked; scalar_t__ rt_pmtu; scalar_t__ rt_iif; scalar_t__ rt_is_input; int rt_type; int rt_genid; } ;
struct net_device {int dummy; } ;


 int DST_HOST ;
 int DST_NOPOLICY ;
 int DST_NOXFRM ;
 int DST_OBSOLETE_FORCE_CHK ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int RTCF_LOCAL ;
 int dev_net (struct net_device*) ;
 struct rtable* dst_alloc (int *,struct net_device*,int,int ,int) ;
 int ip_local_deliver ;
 int ip_output ;
 int ipv4_dst_ops ;
 int rt_genid_ipv4 (int ) ;

struct rtable *rt_dst_alloc(struct net_device *dev,
       unsigned int flags, u16 type,
       bool nopolicy, bool noxfrm, bool will_cache)
{
 struct rtable *rt;

 rt = dst_alloc(&ipv4_dst_ops, dev, 1, DST_OBSOLETE_FORCE_CHK,
         (will_cache ? 0 : DST_HOST) |
         (nopolicy ? DST_NOPOLICY : 0) |
         (noxfrm ? DST_NOXFRM : 0));

 if (rt) {
  rt->rt_genid = rt_genid_ipv4(dev_net(dev));
  rt->rt_flags = flags;
  rt->rt_type = type;
  rt->rt_is_input = 0;
  rt->rt_iif = 0;
  rt->rt_pmtu = 0;
  rt->rt_mtu_locked = 0;
  rt->rt_uses_gateway = 0;
  rt->rt_gw_family = 0;
  rt->rt_gw4 = 0;
  INIT_LIST_HEAD(&rt->rt_uncached);

  rt->dst.output = ip_output;
  if (flags & RTCF_LOCAL)
   rt->dst.input = ip_local_deliver;
 }

 return rt;
}
