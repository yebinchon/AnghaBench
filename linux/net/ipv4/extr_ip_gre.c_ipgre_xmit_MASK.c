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
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_2__ stats; scalar_t__ needed_headroom; scalar_t__ header_ops; } ;
struct iphdr {int dummy; } ;
struct TYPE_3__ {int o_flags; struct iphdr iph; } ;
struct ip_tunnel {TYPE_1__ parms; scalar_t__ hlen; scalar_t__ collect_md; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int TUNNEL_CSUM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*,struct iphdr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct ip_tunnel* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC9(struct sk_buff *skb,
			      struct net_device *dev)
{
	struct ip_tunnel *tunnel = FUNC4(dev);
	const struct iphdr *tnl_params;

	if (!FUNC5(skb))
		goto free_skb;

	if (tunnel->collect_md) {
		FUNC1(skb, dev, skb->protocol);
		return NETDEV_TX_OK;
	}

	if (dev->header_ops) {
		/* Need space for new headers */
		if (FUNC6(skb, dev->needed_headroom -
				      (tunnel->hlen + sizeof(struct iphdr))))
			goto free_skb;

		tnl_params = (const struct iphdr *)skb->data;

		/* Pull skb since ip_tunnel_xmit() needs skb->data pointing
		 * to gre header.
		 */
		FUNC7(skb, tunnel->hlen + sizeof(struct iphdr));
		FUNC8(skb);
	} else {
		if (FUNC6(skb, dev->needed_headroom))
			goto free_skb;

		tnl_params = &tunnel->parms.iph;
	}

	if (FUNC2(skb, !!(tunnel->parms.o_flags & TUNNEL_CSUM)))
		goto free_skb;

	FUNC0(skb, dev, tnl_params, skb->protocol);
	return NETDEV_TX_OK;

free_skb:
	FUNC3(skb);
	dev->stats.tx_dropped++;
	return NETDEV_TX_OK;
}