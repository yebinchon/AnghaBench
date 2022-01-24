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
struct sk_buff {struct net_device* dev; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct netdev_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct netdev_queue*) ; 
 int /*<<< orphan*/  XDP_TX ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct netdev_queue* FUNC4 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sk_buff*,struct net_device*,struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct netdev_queue*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,struct bpf_prog*,int /*<<< orphan*/ ) ; 

void FUNC9(struct sk_buff *skb, struct bpf_prog *xdp_prog)
{
	struct net_device *dev = skb->dev;
	struct netdev_queue *txq;
	bool free_skb = true;
	int cpu, rc;

	txq = FUNC4(dev, skb, NULL);
	cpu = FUNC7();
	FUNC0(dev, txq, cpu);
	if (!FUNC6(txq)) {
		rc = FUNC5(skb, dev, txq, 0);
		if (FUNC2(rc))
			free_skb = false;
	}
	FUNC1(dev, txq);
	if (free_skb) {
		FUNC8(dev, xdp_prog, XDP_TX);
		FUNC3(skb);
	}
}