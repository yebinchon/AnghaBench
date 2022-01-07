
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {int __use; scalar_t__ dev; int output; int input; } ;
struct rtable {scalar_t__ rt_gw_family; struct dst_entry dst; int rt_uncached; int rt_gw6; int rt_gw4; int rt_uses_gateway; int rt_type; int rt_flags; int rt_genid; int rt_mtu_locked; int rt_pmtu; int rt_iif; int rt_is_input; } ;
struct net {scalar_t__ loopback_dev; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int DST_OBSOLETE_DEAD ;
 int ENOMEM ;
 struct dst_entry* ERR_PTR (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int dev_hold (scalar_t__) ;
 struct rtable* dst_alloc (int *,int *,int,int ,int ) ;
 int dst_discard ;
 int dst_discard_out ;
 int dst_release (struct dst_entry*) ;
 int ipv4_dst_blackhole_ops ;
 int rt_genid_ipv4 (struct net*) ;

struct dst_entry *ipv4_blackhole_route(struct net *net, struct dst_entry *dst_orig)
{
 struct rtable *ort = (struct rtable *) dst_orig;
 struct rtable *rt;

 rt = dst_alloc(&ipv4_dst_blackhole_ops, ((void*)0), 1, DST_OBSOLETE_DEAD, 0);
 if (rt) {
  struct dst_entry *new = &rt->dst;

  new->__use = 1;
  new->input = dst_discard;
  new->output = dst_discard_out;

  new->dev = net->loopback_dev;
  if (new->dev)
   dev_hold(new->dev);

  rt->rt_is_input = ort->rt_is_input;
  rt->rt_iif = ort->rt_iif;
  rt->rt_pmtu = ort->rt_pmtu;
  rt->rt_mtu_locked = ort->rt_mtu_locked;

  rt->rt_genid = rt_genid_ipv4(net);
  rt->rt_flags = ort->rt_flags;
  rt->rt_type = ort->rt_type;
  rt->rt_uses_gateway = ort->rt_uses_gateway;
  rt->rt_gw_family = ort->rt_gw_family;
  if (rt->rt_gw_family == AF_INET)
   rt->rt_gw4 = ort->rt_gw4;
  else if (rt->rt_gw_family == AF_INET6)
   rt->rt_gw6 = ort->rt_gw6;

  INIT_LIST_HEAD(&rt->rt_uncached);
 }

 dst_release(dst_orig);

 return rt ? &rt->dst : ERR_PTR(-ENOMEM);
}
