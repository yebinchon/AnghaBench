#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ pkt_type; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct dst_entry {TYPE_1__* dev; } ;
struct dn_skb_cb {int hops; int /*<<< orphan*/  rt_flags; } ;
struct TYPE_4__ {struct net_device* dev; } ;
struct dn_route {int rt_flags; TYPE_2__ dst; } ;
struct dn_dev {scalar_t__ use_long; } ;
struct TYPE_3__ {int /*<<< orphan*/  dn_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DN_RT_F_IE ; 
 struct dn_skb_cb* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int NET_RX_DROP ; 
 int /*<<< orphan*/  NFPROTO_DECNET ; 
 int /*<<< orphan*/  NF_DN_FORWARD ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sk_buff*,struct net_device*,struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ PACKET_HOST ; 
 int RTCF_DOREDIRECT ; 
 int /*<<< orphan*/  dn_to_neigh_output ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct dn_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,scalar_t__) ; 
 struct dst_entry* FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb)
{
	struct dn_skb_cb *cb = FUNC0(skb);
	struct dst_entry *dst = FUNC6(skb);
	struct dn_dev *dn_db = FUNC4(dst->dev->dn_ptr);
	struct dn_route *rt;
	int header_len;
	struct net_device *dev = skb->dev;

	if (skb->pkt_type != PACKET_HOST)
		goto drop;

	/* Ensure that we have enough space for headers */
	rt = (struct dn_route *)FUNC6(skb);
	header_len = dn_db->use_long ? 21 : 6;
	if (FUNC5(skb, FUNC1(rt->dst.dev)+header_len))
		goto drop;

	/*
	 * Hop count exceeded.
	 */
	if (++cb->hops > 30)
		goto drop;

	skb->dev = rt->dst.dev;

	/*
	 * If packet goes out same interface it came in on, then set
	 * the Intra-Ethernet bit. This has no effect for short
	 * packets, so we don't need to test for them here.
	 */
	cb->rt_flags &= ~DN_RT_F_IE;
	if (rt->rt_flags & RTCF_DOREDIRECT)
		cb->rt_flags |= DN_RT_F_IE;

	return FUNC2(NFPROTO_DECNET, NF_DN_FORWARD,
		       &init_net, NULL, skb, dev, skb->dev,
		       dn_to_neigh_output);

drop:
	FUNC3(skb);
	return NET_RX_DROP;
}