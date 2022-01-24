#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  mark; } ;
struct TYPE_9__ {scalar_t__ input; int error; TYPE_5__* lwtstate; scalar_t__ tclassid; int /*<<< orphan*/  output; } ;
struct rtable {int rt_is_input; unsigned int rt_flags; TYPE_3__ dst; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  ifindex; } ;
struct net {int /*<<< orphan*/  loopback_dev; } ;
struct TYPE_7__ {scalar_t__ tun_id; } ;
struct ip_tunnel_info {int mode; TYPE_1__ key; } ;
struct in_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ tun_id; } ;
struct flowi4 {scalar_t__ fl4_dport; scalar_t__ fl4_sport; scalar_t__ flowi4_proto; int /*<<< orphan*/  flowi4_uid; void* saddr; void* daddr; scalar_t__ flowi4_flags; int /*<<< orphan*/  flowi4_scope; int /*<<< orphan*/  flowi4_tos; int /*<<< orphan*/  flowi4_mark; int /*<<< orphan*/  flowi4_iif; scalar_t__ flowi4_oif; TYPE_2__ flowi4_tun_key; } ;
struct flow_keys {int dummy; } ;
struct fib_result {scalar_t__ type; int /*<<< orphan*/ * table; int /*<<< orphan*/ * fi; } ;
struct fib_nh_common {int /*<<< orphan*/  nhc_lwtstate; int /*<<< orphan*/  nhc_rth_input; } ;
typedef  void* __be32 ;
struct TYPE_10__ {scalar_t__ orig_input; } ;

/* Variables and functions */
 int /*<<< orphan*/  BC_FORWARDING ; 
 int EHOSTUNREACH ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 struct fib_nh_common* FUNC0 (struct fib_result) ; 
 scalar_t__ FUNC1 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct in_device*) ; 
 scalar_t__ FUNC4 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct in_device*,struct net*) ; 
 scalar_t__ FUNC6 (struct net*,int /*<<< orphan*/ ) ; 
 int IP_TUNNEL_INFO_TX ; 
 int /*<<< orphan*/  NOPOLICY ; 
 unsigned int RTCF_BROADCAST ; 
 unsigned int RTCF_LOCAL ; 
 scalar_t__ RTN_BROADCAST ; 
 scalar_t__ RTN_LOCAL ; 
 scalar_t__ RTN_UNICAST ; 
 scalar_t__ RTN_UNREACHABLE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct in_device* FUNC9 (struct net_device*) ; 
 struct net* FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (struct net*,struct sk_buff*,struct flowi4*,struct flow_keys*) ; 
 int FUNC12 (struct net*,struct flowi4*,struct fib_result*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct sk_buff*,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,struct in_device*,scalar_t__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_brd ; 
 int /*<<< orphan*/  in_martian_dst ; 
 int /*<<< orphan*/  in_no_route ; 
 int /*<<< orphan*/  in_slow_tot ; 
 scalar_t__ ip_error ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,struct in_device*,struct sk_buff*,void*,void*) ; 
 int FUNC16 (struct sk_buff*,struct fib_result*,struct in_device*,void*,void*,int /*<<< orphan*/ ,struct flow_keys*) ; 
 int /*<<< orphan*/  ip_rt_bug ; 
 scalar_t__ FUNC17 (void*) ; 
 scalar_t__ FUNC18 (void*) ; 
 scalar_t__ FUNC19 (void*) ; 
 scalar_t__ FUNC20 (void*) ; 
 scalar_t__ FUNC21 (struct net_device*) ; 
 TYPE_5__* FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ lwtunnel_input ; 
 scalar_t__ FUNC23 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC24 (char*,void**,void**,int /*<<< orphan*/ ) ; 
 struct rtable* FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC27 (struct fib_nh_common*,struct rtable*) ; 
 scalar_t__ FUNC28 (struct rtable*) ; 
 struct rtable* FUNC29 (int /*<<< orphan*/ ,unsigned int,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC30 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC31 (struct sk_buff*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC32 (struct sk_buff*,TYPE_3__*) ; 
 struct ip_tunnel_info* FUNC33 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC34 (struct net*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC35 (int) ; 

__attribute__((used)) static int FUNC36(struct sk_buff *skb, __be32 daddr, __be32 saddr,
			       u8 tos, struct net_device *dev,
			       struct fib_result *res)
{
	struct in_device *in_dev = FUNC9(dev);
	struct flow_keys *flkeys = NULL, _flkeys;
	struct net    *net = FUNC10(dev);
	struct ip_tunnel_info *tun_info;
	int		err = -EINVAL;
	unsigned int	flags = 0;
	u32		itag = 0;
	struct rtable	*rth;
	struct flowi4	fl4;
	bool do_cache = true;

	/* IP on this device is disabled. */

	if (!in_dev)
		goto out;

	/* Check for the most weird martians, which can be not detected
	   by fib_lookup.
	 */

	tun_info = FUNC33(skb);
	if (tun_info && !(tun_info->mode & IP_TUNNEL_INFO_TX))
		fl4.flowi4_tun_key.tun_id = tun_info->key.tun_id;
	else
		fl4.flowi4_tun_key.tun_id = 0;
	FUNC30(skb);

	if (FUNC19(saddr) || FUNC17(saddr))
		goto martian_source;

	res->fi = NULL;
	res->table = NULL;
	if (FUNC17(daddr) || (saddr == 0 && daddr == 0))
		goto brd_input;

	/* Accept zero addresses only to limited broadcast;
	 * I even do not know to fix it or not. Waiting for complains :-)
	 */
	if (FUNC20(saddr))
		goto martian_source;

	if (FUNC20(daddr))
		goto martian_destination;

	/* Following code try to avoid calling IN_DEV_NET_ROUTE_LOCALNET(),
	 * and call it once if daddr or/and saddr are loopback addresses
	 */
	if (FUNC18(daddr)) {
		if (!FUNC5(in_dev, net))
			goto martian_destination;
	} else if (FUNC18(saddr)) {
		if (!FUNC5(in_dev, net))
			goto martian_source;
	}

	/*
	 *	Now we are ready to route packet.
	 */
	fl4.flowi4_oif = 0;
	fl4.flowi4_iif = dev->ifindex;
	fl4.flowi4_mark = skb->mark;
	fl4.flowi4_tos = tos;
	fl4.flowi4_scope = RT_SCOPE_UNIVERSE;
	fl4.flowi4_flags = 0;
	fl4.daddr = daddr;
	fl4.saddr = saddr;
	fl4.flowi4_uid = FUNC34(net, NULL);

	if (FUNC11(net, skb, &fl4, &_flkeys)) {
		flkeys = &_flkeys;
	} else {
		fl4.flowi4_proto = 0;
		fl4.fl4_sport = 0;
		fl4.fl4_dport = 0;
	}

	err = FUNC12(net, &fl4, res, 0);
	if (err != 0) {
		if (!FUNC3(in_dev))
			err = -EHOSTUNREACH;
		goto no_route;
	}

	if (res->type == RTN_BROADCAST) {
		if (FUNC1(in_dev))
			goto make_route;
		/* not do cache if bc_forwarding is enabled */
		if (FUNC6(net, BC_FORWARDING))
			do_cache = false;
		goto brd_input;
	}

	if (res->type == RTN_LOCAL) {
		err = FUNC13(skb, saddr, daddr, tos,
					  0, dev, in_dev, &itag);
		if (err < 0)
			goto martian_source;
		goto local_input;
	}

	if (!FUNC3(in_dev)) {
		err = -EHOSTUNREACH;
		goto no_route;
	}
	if (res->type != RTN_UNICAST)
		goto martian_destination;

make_route:
	err = FUNC16(skb, res, in_dev, daddr, saddr, tos, flkeys);
out:	return err;

brd_input:
	if (skb->protocol != FUNC14(ETH_P_IP))
		goto e_inval;

	if (!FUNC20(saddr)) {
		err = FUNC13(skb, saddr, 0, tos, 0, dev,
					  in_dev, &itag);
		if (err < 0)
			goto martian_source;
	}
	flags |= RTCF_BROADCAST;
	res->type = RTN_BROADCAST;
	FUNC7(in_brd);

local_input:
	do_cache &= res->fi && !itag;
	if (do_cache) {
		struct fib_nh_common *nhc = FUNC0(*res);

		rth = FUNC25(nhc->nhc_rth_input);
		if (FUNC28(rth)) {
			FUNC32(skb, &rth->dst);
			err = 0;
			goto out;
		}
	}

	rth = FUNC29(FUNC21(dev) ? : net->loopback_dev,
			   flags | RTCF_LOCAL, res->type,
			   FUNC2(in_dev, NOPOLICY), false, do_cache);
	if (!rth)
		goto e_nobufs;

	rth->dst.output= ip_rt_bug;
#ifdef CONFIG_IP_ROUTE_CLASSID
	rth->dst.tclassid = itag;
#endif
	rth->rt_is_input = 1;

	FUNC7(in_slow_tot);
	if (res->type == RTN_UNREACHABLE) {
		rth->dst.input= ip_error;
		rth->dst.error= -err;
		rth->rt_flags 	&= ~RTCF_LOCAL;
	}

	if (do_cache) {
		struct fib_nh_common *nhc = FUNC0(*res);

		rth->dst.lwtstate = FUNC22(nhc->nhc_lwtstate);
		if (FUNC23(rth->dst.lwtstate)) {
			FUNC8(rth->dst.input == lwtunnel_input);
			rth->dst.lwtstate->orig_input = rth->dst.input;
			rth->dst.input = lwtunnel_input;
		}

		if (FUNC35(!FUNC27(nhc, rth)))
			FUNC26(rth);
	}
	FUNC31(skb, &rth->dst);
	err = 0;
	goto out;

no_route:
	FUNC7(in_no_route);
	res->type = RTN_UNREACHABLE;
	res->fi = NULL;
	res->table = NULL;
	goto local_input;

	/*
	 *	Do not cache martian addresses: they should be logged (RFC1812)
	 */
martian_destination:
	FUNC7(in_martian_dst);
#ifdef CONFIG_IP_ROUTE_VERBOSE
	if (IN_DEV_LOG_MARTIANS(in_dev))
		net_warn_ratelimited("martian destination %pI4 from %pI4, dev %s\n",
				     &daddr, &saddr, dev->name);
#endif

e_inval:
	err = -EINVAL;
	goto out;

e_nobufs:
	err = -ENOBUFS;
	goto out;

martian_source:
	FUNC15(dev, in_dev, skb, daddr, saddr);
	goto out;
}