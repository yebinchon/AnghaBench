
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ protocol; int mark; } ;
struct TYPE_9__ {scalar_t__ input; int error; TYPE_5__* lwtstate; scalar_t__ tclassid; int output; } ;
struct rtable {int rt_is_input; unsigned int rt_flags; TYPE_3__ dst; } ;
struct net_device {int name; int ifindex; } ;
struct net {int loopback_dev; } ;
struct TYPE_7__ {scalar_t__ tun_id; } ;
struct ip_tunnel_info {int mode; TYPE_1__ key; } ;
struct in_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ tun_id; } ;
struct flowi4 {scalar_t__ fl4_dport; scalar_t__ fl4_sport; scalar_t__ flowi4_proto; int flowi4_uid; void* saddr; void* daddr; scalar_t__ flowi4_flags; int flowi4_scope; int flowi4_tos; int flowi4_mark; int flowi4_iif; scalar_t__ flowi4_oif; TYPE_2__ flowi4_tun_key; } ;
struct flow_keys {int dummy; } ;
struct fib_result {scalar_t__ type; int * table; int * fi; } ;
struct fib_nh_common {int nhc_lwtstate; int nhc_rth_input; } ;
typedef void* __be32 ;
struct TYPE_10__ {scalar_t__ orig_input; } ;


 int BC_FORWARDING ;
 int EHOSTUNREACH ;
 int EINVAL ;
 int ENOBUFS ;
 int ETH_P_IP ;
 struct fib_nh_common* FIB_RES_NHC (struct fib_result) ;
 scalar_t__ IN_DEV_BFORWARD (struct in_device*) ;
 int IN_DEV_CONF_GET (struct in_device*,int ) ;
 int IN_DEV_FORWARD (struct in_device*) ;
 scalar_t__ IN_DEV_LOG_MARTIANS (struct in_device*) ;
 int IN_DEV_NET_ROUTE_LOCALNET (struct in_device*,struct net*) ;
 scalar_t__ IPV4_DEVCONF_ALL (struct net*,int ) ;
 int IP_TUNNEL_INFO_TX ;
 int NOPOLICY ;
 unsigned int RTCF_BROADCAST ;
 unsigned int RTCF_LOCAL ;
 scalar_t__ RTN_BROADCAST ;
 scalar_t__ RTN_LOCAL ;
 scalar_t__ RTN_UNICAST ;
 scalar_t__ RTN_UNREACHABLE ;
 int RT_CACHE_STAT_INC (int ) ;
 int RT_SCOPE_UNIVERSE ;
 int WARN_ON (int) ;
 struct in_device* __in_dev_get_rcu (struct net_device*) ;
 struct net* dev_net (struct net_device*) ;
 scalar_t__ fib4_rules_early_flow_dissect (struct net*,struct sk_buff*,struct flowi4*,struct flow_keys*) ;
 int fib_lookup (struct net*,struct flowi4*,struct fib_result*,int ) ;
 int fib_validate_source (struct sk_buff*,void*,void*,int ,int ,struct net_device*,struct in_device*,scalar_t__*) ;
 scalar_t__ htons (int ) ;
 int in_brd ;
 int in_martian_dst ;
 int in_no_route ;
 int in_slow_tot ;
 scalar_t__ ip_error ;
 int ip_handle_martian_source (struct net_device*,struct in_device*,struct sk_buff*,void*,void*) ;
 int ip_mkroute_input (struct sk_buff*,struct fib_result*,struct in_device*,void*,void*,int ,struct flow_keys*) ;
 int ip_rt_bug ;
 scalar_t__ ipv4_is_lbcast (void*) ;
 scalar_t__ ipv4_is_loopback (void*) ;
 scalar_t__ ipv4_is_multicast (void*) ;
 scalar_t__ ipv4_is_zeronet (void*) ;
 scalar_t__ l3mdev_master_dev_rcu (struct net_device*) ;
 TYPE_5__* lwtstate_get (int ) ;
 scalar_t__ lwtunnel_input ;
 scalar_t__ lwtunnel_input_redirect (TYPE_5__*) ;
 int net_warn_ratelimited (char*,void**,void**,int ) ;
 struct rtable* rcu_dereference (int ) ;
 int rt_add_uncached_list (struct rtable*) ;
 int rt_cache_route (struct fib_nh_common*,struct rtable*) ;
 scalar_t__ rt_cache_valid (struct rtable*) ;
 struct rtable* rt_dst_alloc (int ,unsigned int,scalar_t__,int ,int,int) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,TYPE_3__*) ;
 int skb_dst_set_noref (struct sk_buff*,TYPE_3__*) ;
 struct ip_tunnel_info* skb_tunnel_info (struct sk_buff*) ;
 int sock_net_uid (struct net*,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ip_route_input_slow(struct sk_buff *skb, __be32 daddr, __be32 saddr,
          u8 tos, struct net_device *dev,
          struct fib_result *res)
{
 struct in_device *in_dev = __in_dev_get_rcu(dev);
 struct flow_keys *flkeys = ((void*)0), _flkeys;
 struct net *net = dev_net(dev);
 struct ip_tunnel_info *tun_info;
 int err = -EINVAL;
 unsigned int flags = 0;
 u32 itag = 0;
 struct rtable *rth;
 struct flowi4 fl4;
 bool do_cache = 1;



 if (!in_dev)
  goto out;





 tun_info = skb_tunnel_info(skb);
 if (tun_info && !(tun_info->mode & IP_TUNNEL_INFO_TX))
  fl4.flowi4_tun_key.tun_id = tun_info->key.tun_id;
 else
  fl4.flowi4_tun_key.tun_id = 0;
 skb_dst_drop(skb);

 if (ipv4_is_multicast(saddr) || ipv4_is_lbcast(saddr))
  goto martian_source;

 res->fi = ((void*)0);
 res->table = ((void*)0);
 if (ipv4_is_lbcast(daddr) || (saddr == 0 && daddr == 0))
  goto brd_input;




 if (ipv4_is_zeronet(saddr))
  goto martian_source;

 if (ipv4_is_zeronet(daddr))
  goto martian_destination;




 if (ipv4_is_loopback(daddr)) {
  if (!IN_DEV_NET_ROUTE_LOCALNET(in_dev, net))
   goto martian_destination;
 } else if (ipv4_is_loopback(saddr)) {
  if (!IN_DEV_NET_ROUTE_LOCALNET(in_dev, net))
   goto martian_source;
 }




 fl4.flowi4_oif = 0;
 fl4.flowi4_iif = dev->ifindex;
 fl4.flowi4_mark = skb->mark;
 fl4.flowi4_tos = tos;
 fl4.flowi4_scope = RT_SCOPE_UNIVERSE;
 fl4.flowi4_flags = 0;
 fl4.daddr = daddr;
 fl4.saddr = saddr;
 fl4.flowi4_uid = sock_net_uid(net, ((void*)0));

 if (fib4_rules_early_flow_dissect(net, skb, &fl4, &_flkeys)) {
  flkeys = &_flkeys;
 } else {
  fl4.flowi4_proto = 0;
  fl4.fl4_sport = 0;
  fl4.fl4_dport = 0;
 }

 err = fib_lookup(net, &fl4, res, 0);
 if (err != 0) {
  if (!IN_DEV_FORWARD(in_dev))
   err = -EHOSTUNREACH;
  goto no_route;
 }

 if (res->type == RTN_BROADCAST) {
  if (IN_DEV_BFORWARD(in_dev))
   goto make_route;

  if (IPV4_DEVCONF_ALL(net, BC_FORWARDING))
   do_cache = 0;
  goto brd_input;
 }

 if (res->type == RTN_LOCAL) {
  err = fib_validate_source(skb, saddr, daddr, tos,
       0, dev, in_dev, &itag);
  if (err < 0)
   goto martian_source;
  goto local_input;
 }

 if (!IN_DEV_FORWARD(in_dev)) {
  err = -EHOSTUNREACH;
  goto no_route;
 }
 if (res->type != RTN_UNICAST)
  goto martian_destination;

make_route:
 err = ip_mkroute_input(skb, res, in_dev, daddr, saddr, tos, flkeys);
out: return err;

brd_input:
 if (skb->protocol != htons(ETH_P_IP))
  goto e_inval;

 if (!ipv4_is_zeronet(saddr)) {
  err = fib_validate_source(skb, saddr, 0, tos, 0, dev,
       in_dev, &itag);
  if (err < 0)
   goto martian_source;
 }
 flags |= RTCF_BROADCAST;
 res->type = RTN_BROADCAST;
 RT_CACHE_STAT_INC(in_brd);

local_input:
 do_cache &= res->fi && !itag;
 if (do_cache) {
  struct fib_nh_common *nhc = FIB_RES_NHC(*res);

  rth = rcu_dereference(nhc->nhc_rth_input);
  if (rt_cache_valid(rth)) {
   skb_dst_set_noref(skb, &rth->dst);
   err = 0;
   goto out;
  }
 }

 rth = rt_dst_alloc(l3mdev_master_dev_rcu(dev) ? : net->loopback_dev,
      flags | RTCF_LOCAL, res->type,
      IN_DEV_CONF_GET(in_dev, NOPOLICY), 0, do_cache);
 if (!rth)
  goto e_nobufs;

 rth->dst.output= ip_rt_bug;



 rth->rt_is_input = 1;

 RT_CACHE_STAT_INC(in_slow_tot);
 if (res->type == RTN_UNREACHABLE) {
  rth->dst.input= ip_error;
  rth->dst.error= -err;
  rth->rt_flags &= ~RTCF_LOCAL;
 }

 if (do_cache) {
  struct fib_nh_common *nhc = FIB_RES_NHC(*res);

  rth->dst.lwtstate = lwtstate_get(nhc->nhc_lwtstate);
  if (lwtunnel_input_redirect(rth->dst.lwtstate)) {
   WARN_ON(rth->dst.input == lwtunnel_input);
   rth->dst.lwtstate->orig_input = rth->dst.input;
   rth->dst.input = lwtunnel_input;
  }

  if (unlikely(!rt_cache_route(nhc, rth)))
   rt_add_uncached_list(rth);
 }
 skb_dst_set(skb, &rth->dst);
 err = 0;
 goto out;

no_route:
 RT_CACHE_STAT_INC(in_no_route);
 res->type = RTN_UNREACHABLE;
 res->fi = ((void*)0);
 res->table = ((void*)0);
 goto local_input;




martian_destination:
 RT_CACHE_STAT_INC(in_martian_dst);






e_inval:
 err = -EINVAL;
 goto out;

e_nobufs:
 err = -ENOBUFS;
 goto out;

martian_source:
 ip_handle_martian_source(dev, in_dev, skb, daddr, saddr);
 goto out;
}
