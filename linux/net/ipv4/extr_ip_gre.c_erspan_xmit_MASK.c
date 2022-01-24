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
struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {scalar_t__ mtu; scalar_t__ hard_header_len; TYPE_2__ stats; int /*<<< orphan*/  needed_headroom; } ;
struct TYPE_3__ {int /*<<< orphan*/  iph; int /*<<< orphan*/  o_flags; int /*<<< orphan*/  o_key; } ;
struct ip_tunnel {int erspan_ver; TYPE_1__ parms; int /*<<< orphan*/  hwid; int /*<<< orphan*/  dir; int /*<<< orphan*/  index; scalar_t__ collect_md; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_ERSPAN ; 
 int /*<<< orphan*/  ETH_P_ERSPAN2 ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  TUNNEL_KEY ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct ip_tunnel* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC12(struct sk_buff *skb,
			       struct net_device *dev)
{
	struct ip_tunnel *tunnel = FUNC7(dev);
	bool truncate = false;
	__be16 proto;

	if (!FUNC9(skb))
		goto free_skb;

	if (tunnel->collect_md) {
		FUNC3(skb, dev);
		return NETDEV_TX_OK;
	}

	if (FUNC4(skb, false))
		goto free_skb;

	if (FUNC11(skb, dev->needed_headroom))
		goto free_skb;

	if (skb->len > dev->mtu + dev->hard_header_len) {
		FUNC10(skb, dev->mtu + dev->hard_header_len);
		truncate = true;
	}

	/* Push ERSPAN header */
	if (tunnel->erspan_ver == 1) {
		FUNC1(skb, FUNC8(tunnel->parms.o_key),
				    tunnel->index,
				    truncate, true);
		proto = FUNC5(ETH_P_ERSPAN);
	} else if (tunnel->erspan_ver == 2) {
		FUNC2(skb, FUNC8(tunnel->parms.o_key),
				       tunnel->dir, tunnel->hwid,
				       truncate, true);
		proto = FUNC5(ETH_P_ERSPAN2);
	} else {
		goto free_skb;
	}

	tunnel->parms.o_flags &= ~TUNNEL_KEY;
	FUNC0(skb, dev, &tunnel->parms.iph, proto);
	return NETDEV_TX_OK;

free_skb:
	FUNC6(skb);
	dev->stats.tx_dropped++;
	return NETDEV_TX_OK;
}