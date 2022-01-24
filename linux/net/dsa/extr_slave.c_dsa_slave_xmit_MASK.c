#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct pcpu_sw_netstats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {int dummy; } ;
struct dsa_slave_priv {struct sk_buff* (* xmit ) (struct sk_buff*,struct net_device*) ;int /*<<< orphan*/  stats64; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int deferred_xmit; int /*<<< orphan*/ * clone; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dsa_slave_priv*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct dsa_slave_priv* FUNC4 (struct net_device*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,struct net_device*) ; 
 struct pcpu_sw_netstats* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC9(struct sk_buff *skb, struct net_device *dev)
{
	struct dsa_slave_priv *p = FUNC4(dev);
	struct pcpu_sw_netstats *s;
	struct sk_buff *nskb;

	s = FUNC6(p->stats64);
	FUNC7(&s->syncp);
	s->tx_packets++;
	s->tx_bytes += skb->len;
	FUNC8(&s->syncp);

	FUNC0(skb)->deferred_xmit = false;
	FUNC0(skb)->clone = NULL;

	/* Identify PTP protocol packets, clone them, and pass them to the
	 * switch driver
	 */
	FUNC2(p, skb);

	/* Transmit function may have to reallocate the original SKB,
	 * in which case it must have freed it. Only free it here on error.
	 */
	nskb = p->xmit(skb, dev);
	if (!nskb) {
		if (!FUNC0(skb)->deferred_xmit)
			FUNC3(skb);
		return NETDEV_TX_OK;
	}

	return FUNC1(nskb, dev);
}