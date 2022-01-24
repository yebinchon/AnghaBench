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
struct sk_buff {int len; } ;
struct pcpu_sw_netstats {int tx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_packets; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  tstats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {int /*<<< orphan*/  vport; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 TYPE_2__* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct pcpu_sw_netstats* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t
FUNC8(struct sk_buff *skb, struct net_device *netdev)
{
	int len, err;

	len = skb->len;
	FUNC3();
	err = FUNC2(FUNC0(netdev)->vport, skb, NULL);
	FUNC4();

	if (FUNC1(!err)) {
		struct pcpu_sw_netstats *tstats = FUNC5(netdev->tstats);

		FUNC6(&tstats->syncp);
		tstats->tx_bytes += len;
		tstats->tx_packets++;
		FUNC7(&tstats->syncp);
	} else {
		netdev->stats.tx_errors++;
	}
	return NETDEV_TX_OK;
}