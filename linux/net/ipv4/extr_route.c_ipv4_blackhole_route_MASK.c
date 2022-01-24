#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dst_entry {int __use; scalar_t__ dev; int /*<<< orphan*/  output; int /*<<< orphan*/  input; } ;
struct rtable {scalar_t__ rt_gw_family; struct dst_entry dst; int /*<<< orphan*/  rt_uncached; int /*<<< orphan*/  rt_gw6; int /*<<< orphan*/  rt_gw4; int /*<<< orphan*/  rt_uses_gateway; int /*<<< orphan*/  rt_type; int /*<<< orphan*/  rt_flags; int /*<<< orphan*/  rt_genid; int /*<<< orphan*/  rt_mtu_locked; int /*<<< orphan*/  rt_pmtu; int /*<<< orphan*/  rt_iif; int /*<<< orphan*/  rt_is_input; } ;
struct net {scalar_t__ loopback_dev; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  DST_OBSOLETE_DEAD ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dst_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct rtable* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dst_discard ; 
 int /*<<< orphan*/  dst_discard_out ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*) ; 
 int /*<<< orphan*/  ipv4_dst_blackhole_ops ; 
 int /*<<< orphan*/  FUNC5 (struct net*) ; 

struct dst_entry *FUNC6(struct net *net, struct dst_entry *dst_orig)
{
	struct rtable *ort = (struct rtable *) dst_orig;
	struct rtable *rt;

	rt = FUNC3(&ipv4_dst_blackhole_ops, NULL, 1, DST_OBSOLETE_DEAD, 0);
	if (rt) {
		struct dst_entry *new = &rt->dst;

		new->__use = 1;
		new->input = dst_discard;
		new->output = dst_discard_out;

		new->dev = net->loopback_dev;
		if (new->dev)
			FUNC2(new->dev);

		rt->rt_is_input = ort->rt_is_input;
		rt->rt_iif = ort->rt_iif;
		rt->rt_pmtu = ort->rt_pmtu;
		rt->rt_mtu_locked = ort->rt_mtu_locked;

		rt->rt_genid = FUNC5(net);
		rt->rt_flags = ort->rt_flags;
		rt->rt_type = ort->rt_type;
		rt->rt_uses_gateway = ort->rt_uses_gateway;
		rt->rt_gw_family = ort->rt_gw_family;
		if (rt->rt_gw_family == AF_INET)
			rt->rt_gw4 = ort->rt_gw4;
		else if (rt->rt_gw_family == AF_INET6)
			rt->rt_gw6 = ort->rt_gw6;

		FUNC1(&rt->rt_uncached);
	}

	FUNC4(dst_orig);

	return rt ? &rt->dst : FUNC0(-ENOMEM);
}