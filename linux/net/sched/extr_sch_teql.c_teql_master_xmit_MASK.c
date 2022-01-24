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
struct teql_master {unsigned int tx_bytes; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_errors; struct Qdisc* slaves; int /*<<< orphan*/  tx_packets; } ;
struct sk_buff {int dummy; } ;
struct netdev_queue {struct Qdisc* qdisc_sleeping; } ;
struct net_device {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 void* FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct netdev_queue* FUNC5 (struct net_device*,int) ; 
 struct teql_master* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct net_device*,struct netdev_queue*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct netdev_queue*) ; 
 scalar_t__ FUNC12 (struct netdev_queue*) ; 
 struct net_device* FUNC13 (struct Qdisc*) ; 
 unsigned int FUNC14 (struct sk_buff*) ; 
 int FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int FUNC17 (struct sk_buff*,struct sk_buff*,struct net_device*,struct netdev_queue*) ; 

__attribute__((used)) static netdev_tx_t FUNC18(struct sk_buff *skb, struct net_device *dev)
{
	struct teql_master *master = FUNC6(dev);
	struct Qdisc *start, *q;
	int busy;
	int nores;
	int subq = FUNC15(skb);
	struct sk_buff *skb_res = NULL;

	start = master->slaves;

restart:
	nores = 0;
	busy = 0;

	q = start;
	if (!q)
		goto drop;

	do {
		struct net_device *slave = FUNC13(q);
		struct netdev_queue *slave_txq = FUNC5(slave, 0);

		if (slave_txq->qdisc_sleeping != q)
			continue;
		if (FUNC12(FUNC5(slave, subq)) ||
		    !FUNC8(slave)) {
			busy = 1;
			continue;
		}

		switch (FUNC17(skb, skb_res, slave, slave_txq)) {
		case 0:
			if (FUNC1(slave_txq)) {
				unsigned int length = FUNC14(skb);

				if (!FUNC11(slave_txq) &&
				    FUNC7(skb, slave, slave_txq, false) ==
				    NETDEV_TX_OK) {
					FUNC2(slave_txq);
					master->slaves = FUNC0(q);
					FUNC10(dev);
					master->tx_packets++;
					master->tx_bytes += length;
					return NETDEV_TX_OK;
				}
				FUNC2(slave_txq);
			}
			if (FUNC12(FUNC5(dev, 0)))
				busy = 1;
			break;
		case 1:
			master->slaves = FUNC0(q);
			return NETDEV_TX_OK;
		default:
			nores = 1;
			break;
		}
		FUNC3(skb, FUNC16(skb));
	} while ((q = FUNC0(q)) != start);

	if (nores && skb_res == NULL) {
		skb_res = skb;
		goto restart;
	}

	if (busy) {
		FUNC9(dev);
		return NETDEV_TX_BUSY;
	}
	master->tx_errors++;

drop:
	master->tx_dropped++;
	FUNC4(skb);
	return NETDEV_TX_OK;
}