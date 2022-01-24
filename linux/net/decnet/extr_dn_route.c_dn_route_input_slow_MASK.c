#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  mark; } ;
struct net_device {int /*<<< orphan*/  ifindex; int /*<<< orphan*/  dn_ptr; } ;
struct neighbour {int dummy; } ;
struct flowidn {scalar_t__ daddr; scalar_t__ saddr; int /*<<< orphan*/  flowidn_mark; int /*<<< orphan*/  flowidn_oif; int /*<<< orphan*/  flowidn_iif; int /*<<< orphan*/  flowidn_scope; } ;
struct dn_skb_cb {scalar_t__ dst; scalar_t__ src; int rt_flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  input; struct net_device* dev; int /*<<< orphan*/  output; int /*<<< orphan*/  lastuse; } ;
struct TYPE_9__ {scalar_t__ saddr; scalar_t__ daddr; int /*<<< orphan*/  flowidn_mark; int /*<<< orphan*/  flowidn_iif; scalar_t__ flowidn_oif; } ;
struct dn_route {scalar_t__ rt_saddr; scalar_t__ rt_daddr; scalar_t__ rt_gateway; scalar_t__ rt_dst_map; scalar_t__ rt_src_map; int rt_flags; TYPE_3__ dst; TYPE_4__ fld; struct neighbour* n; void* rt_local_src; int /*<<< orphan*/ * dn_next; } ;
struct dn_neigh {void* addr; } ;
struct dn_fib_res {int type; TYPE_2__* fi; scalar_t__ r; } ;
struct TYPE_6__ {int /*<<< orphan*/  forwarding; } ;
struct dn_dev {int /*<<< orphan*/  router; TYPE_1__ parms; } ;
typedef  void* __le16 ;
struct TYPE_7__ {int fib_nhs; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct dn_fib_res) ; 
 void* FUNC1 (struct dn_fib_res) ; 
 void* FUNC2 (struct dn_fib_res) ; 
 int DN_RT_F_IE ; 
 struct dn_skb_cb* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  DST_HOST ; 
 int /*<<< orphan*/  DST_OBSOLETE_NONE ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOTUNIQ ; 
 int ESRCH ; 
 int RTCF_DNAT ; 
 int RTCF_DOREDIRECT ; 
 int RTCF_LOCAL ; 
 int RTCF_NAT ; 
#define  RTN_BLACKHOLE 131 
#define  RTN_LOCAL 130 
 int RTN_NAT ; 
#define  RTN_UNICAST 129 
#define  RTN_UNREACHABLE 128 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  dn_dst_ops ; 
 int FUNC7 (struct flowidn*,struct dn_fib_res*) ; 
 int /*<<< orphan*/  FUNC8 (struct dn_fib_res*) ; 
 scalar_t__ FUNC9 (scalar_t__,struct dn_fib_res*) ; 
 int /*<<< orphan*/  FUNC10 (struct flowidn*,struct dn_fib_res*) ; 
 int /*<<< orphan*/  dn_forward ; 
 unsigned int FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct dn_route*,unsigned int,struct dn_route**) ; 
 int /*<<< orphan*/  dn_nsp_rx ; 
 int /*<<< orphan*/  dn_output ; 
 int /*<<< orphan*/  dn_rt_bug_out ; 
 int FUNC13 (struct dn_route*,struct dn_fib_res*) ; 
 struct dn_route* FUNC14 (int /*<<< orphan*/ *,struct net_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dst_discard ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 struct neighbour* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 struct dn_dev* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC22(struct sk_buff *skb)
{
	struct dn_route *rt = NULL;
	struct dn_skb_cb *cb = FUNC3(skb);
	struct net_device *in_dev = skb->dev;
	struct net_device *out_dev = NULL;
	struct dn_dev *dn_db;
	struct neighbour *neigh = NULL;
	unsigned int hash;
	int flags = 0;
	__le16 gateway = 0;
	__le16 local_src = 0;
	struct flowidn fld = {
		.daddr = cb->dst,
		.saddr = cb->src,
		.flowidn_scope = RT_SCOPE_UNIVERSE,
		.flowidn_mark = skb->mark,
		.flowidn_iif = skb->dev->ifindex,
	};
	struct dn_fib_res res = { .fi = NULL, .type = RTN_UNREACHABLE };
	int err = -EINVAL;
	int free_res = 0;

	FUNC4(in_dev);

	if ((dn_db = FUNC20(in_dev->dn_ptr)) == NULL)
		goto out;

	/* Zero source addresses are not allowed */
	if (fld.saddr == 0)
		goto out;

	/*
	 * In this case we've just received a packet from a source
	 * outside ourselves pretending to come from us. We don't
	 * allow it any further to prevent routing loops, spoofing and
	 * other nasties. Loopback packets already have the dst attached
	 * so this only affects packets which have originated elsewhere.
	 */
	err  = -ENOTUNIQ;
	if (FUNC6(in_dev, cb->src))
		goto out;

	err = FUNC7(&fld, &res);
	if (err) {
		if (err != -ESRCH)
			goto out;
		/*
		 * Is the destination us ?
		 */
		if (!FUNC6(in_dev, cb->dst))
			goto e_inval;

		res.type = RTN_LOCAL;
	} else {
		__le16 src_map = fld.saddr;
		free_res = 1;

		out_dev = FUNC0(res);
		if (out_dev == NULL) {
			FUNC19("Bug in dn_route_input_slow() No output device\n");
			goto e_inval;
		}
		FUNC4(out_dev);

		if (res.r)
			src_map = fld.saddr; /* no NAT support for now */

		gateway = FUNC1(res);
		if (res.type == RTN_NAT) {
			fld.daddr = FUNC9(fld.daddr, &res);
			FUNC8(&res);
			free_res = 0;
			if (FUNC7(&fld, &res))
				goto e_inval;
			free_res = 1;
			if (res.type != RTN_UNICAST)
				goto e_inval;
			flags |= RTCF_DNAT;
			gateway = fld.daddr;
		}
		fld.saddr = src_map;
	}

	switch(res.type) {
	case RTN_UNICAST:
		/*
		 * Forwarding check here, we only check for forwarding
		 * being turned off, if you want to only forward intra
		 * area, its up to you to set the routing tables up
		 * correctly.
		 */
		if (dn_db->parms.forwarding == 0)
			goto e_inval;

		if (res.fi->fib_nhs > 1 && fld.flowidn_oif == 0)
			FUNC10(&fld, &res);

		/*
		 * Check for out_dev == in_dev. We use the RTCF_DOREDIRECT
		 * flag as a hint to set the intra-ethernet bit when
		 * forwarding. If we've got NAT in operation, we don't do
		 * this optimisation.
		 */
		if (out_dev == in_dev && !(flags & RTCF_NAT))
			flags |= RTCF_DOREDIRECT;

		local_src = FUNC2(res);

	case RTN_BLACKHOLE:
	case RTN_UNREACHABLE:
		break;
	case RTN_LOCAL:
		flags |= RTCF_LOCAL;
		fld.saddr = cb->dst;
		fld.daddr = cb->src;

		/* Routing tables gave us a gateway */
		if (gateway)
			goto make_route;

		/* Packet was intra-ethernet, so we know its on-link */
		if (cb->rt_flags & DN_RT_F_IE) {
			gateway = cb->src;
			goto make_route;
		}

		/* Use the default router if there is one */
		neigh = FUNC17(dn_db->router);
		if (neigh) {
			gateway = ((struct dn_neigh *)neigh)->addr;
			goto make_route;
		}

		/* Close eyes and pray */
		gateway = cb->src;
		goto make_route;
	default:
		goto e_inval;
	}

make_route:
	rt = FUNC14(&dn_dst_ops, out_dev, 1, DST_OBSOLETE_NONE, DST_HOST);
	if (rt == NULL)
		goto e_nobufs;

	rt->dn_next = NULL;
	FUNC16(&rt->fld, 0, sizeof(rt->fld));
	rt->rt_saddr      = fld.saddr;
	rt->rt_daddr      = fld.daddr;
	rt->rt_gateway    = fld.daddr;
	if (gateway)
		rt->rt_gateway = gateway;
	rt->rt_local_src  = local_src ? local_src : rt->rt_saddr;

	rt->rt_dst_map    = fld.daddr;
	rt->rt_src_map    = fld.saddr;

	rt->fld.saddr        = cb->src;
	rt->fld.daddr        = cb->dst;
	rt->fld.flowidn_oif  = 0;
	rt->fld.flowidn_iif  = in_dev->ifindex;
	rt->fld.flowidn_mark = fld.flowidn_mark;

	rt->n = neigh;
	rt->dst.lastuse = jiffies;
	rt->dst.output = dn_rt_bug_out;
	switch (res.type) {
	case RTN_UNICAST:
		rt->dst.input = dn_forward;
		break;
	case RTN_LOCAL:
		rt->dst.output = dn_output;
		rt->dst.input = dn_nsp_rx;
		rt->dst.dev = in_dev;
		flags |= RTCF_LOCAL;
		break;
	default:
	case RTN_UNREACHABLE:
	case RTN_BLACKHOLE:
		rt->dst.input = dst_discard;
	}
	rt->rt_flags = flags;

	err = FUNC13(rt, &res);
	if (err)
		goto e_neighbour;

	hash = FUNC11(rt->fld.saddr, rt->fld.daddr);
	/* dn_insert_route() increments dst->__refcnt */
	FUNC12(rt, hash, &rt);
	FUNC21(skb, &rt->dst);

done:
	if (neigh)
		FUNC18(neigh);
	if (free_res)
		FUNC8(&res);
	FUNC5(in_dev);
	if (out_dev)
		FUNC5(out_dev);
out:
	return err;

e_inval:
	err = -EINVAL;
	goto done;

e_nobufs:
	err = -ENOBUFS;
	goto done;

e_neighbour:
	FUNC15(&rt->dst);
	goto done;
}