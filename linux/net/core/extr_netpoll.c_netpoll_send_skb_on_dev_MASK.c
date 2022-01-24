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
struct sk_buff {int dummy; } ;
struct netpoll_info {int /*<<< orphan*/  tx_work; int /*<<< orphan*/  txq; } ;
struct netpoll {TYPE_2__* dev; } ;
struct netdev_queue {int dummy; } ;
struct net_device {TYPE_1__* netdev_ops; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  npinfo; } ;
struct TYPE_3__ {int /*<<< orphan*/  ndo_start_xmit; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*,struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct netdev_queue*) ; 
 int NETDEV_TX_BUSY ; 
 unsigned long USEC_PER_POLL ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned long FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct netdev_queue* FUNC8 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (struct sk_buff*,struct net_device*,struct netdev_queue*) ; 
 struct netpoll_info* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (unsigned long) ; 

void FUNC20(struct netpoll *np, struct sk_buff *skb,
			     struct net_device *dev)
{
	int status = NETDEV_TX_BUSY;
	unsigned long tries;
	/* It is up to the caller to keep npinfo alive. */
	struct netpoll_info *npinfo;

	FUNC7();

	npinfo = FUNC15(np->dev->npinfo);
	if (!npinfo || !FUNC10(dev) || !FUNC9(dev)) {
		FUNC3(skb);
		return;
	}

	/* don't get messages out of order, and no recursion */
	if (FUNC17(&npinfo->txq) == 0 && !FUNC12(dev)) {
		struct netdev_queue *txq;

		txq = FUNC8(dev, skb, NULL);

		/* try until next clock tick */
		for (tries = FUNC6(1)/USEC_PER_POLL;
		     tries > 0; --tries) {
			if (FUNC0(dev, txq)) {
				if (!FUNC11(txq))
					status = FUNC14(skb, dev, txq);

				FUNC1(dev, txq);

				if (FUNC4(status))
					break;

			}

			/* tickle device maybe there is some cleanup */
			FUNC13(np->dev);

			FUNC19(USEC_PER_POLL);
		}

		FUNC2(!FUNC5(),
			"netpoll_send_skb_on_dev(): %s enabled interrupts in poll (%pS)\n",
			dev->name, dev->netdev_ops->ndo_start_xmit);

	}

	if (!FUNC4(status)) {
		FUNC18(&npinfo->txq, skb);
		FUNC16(&npinfo->tx_work,0);
	}
}