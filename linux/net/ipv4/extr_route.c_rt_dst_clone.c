
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lwtstate; int lastuse; int error; int output; int input; int flags; } ;
struct rtable {scalar_t__ rt_gw_family; TYPE_1__ dst; int rt_uncached; int rt_gw6; int rt_gw4; int rt_mtu_locked; int rt_pmtu; int rt_iif; int rt_is_input; int rt_type; int rt_flags; int rt_genid; } ;
struct net_device {int dummy; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int DST_HOST ;
 int DST_OBSOLETE_FORCE_CHK ;
 int INIT_LIST_HEAD (int *) ;
 int dev_net (struct net_device*) ;
 struct rtable* dst_alloc (int *,struct net_device*,int,int ,int ) ;
 int ipv4_dst_ops ;
 int jiffies ;
 int lwtstate_get (int ) ;
 int rt_genid_ipv4 (int ) ;

struct rtable *rt_dst_clone(struct net_device *dev, struct rtable *rt)
{
 struct rtable *new_rt;

 new_rt = dst_alloc(&ipv4_dst_ops, dev, 1, DST_OBSOLETE_FORCE_CHK,
      rt->dst.flags);

 if (new_rt) {
  new_rt->rt_genid = rt_genid_ipv4(dev_net(dev));
  new_rt->rt_flags = rt->rt_flags;
  new_rt->rt_type = rt->rt_type;
  new_rt->rt_is_input = rt->rt_is_input;
  new_rt->rt_iif = rt->rt_iif;
  new_rt->rt_pmtu = rt->rt_pmtu;
  new_rt->rt_mtu_locked = rt->rt_mtu_locked;
  new_rt->rt_gw_family = rt->rt_gw_family;
  if (rt->rt_gw_family == AF_INET)
   new_rt->rt_gw4 = rt->rt_gw4;
  else if (rt->rt_gw_family == AF_INET6)
   new_rt->rt_gw6 = rt->rt_gw6;
  INIT_LIST_HEAD(&new_rt->rt_uncached);

  new_rt->dst.flags |= DST_HOST;
  new_rt->dst.input = rt->dst.input;
  new_rt->dst.output = rt->dst.output;
  new_rt->dst.error = rt->dst.error;
  new_rt->dst.lastuse = jiffies;
  new_rt->dst.lwtstate = lwtstate_get(rt->dst.lwtstate);
 }
 return new_rt;
}
