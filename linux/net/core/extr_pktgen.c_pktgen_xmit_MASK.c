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
struct sk_buff {int /*<<< orphan*/  users; int /*<<< orphan*/  dev; int /*<<< orphan*/  protocol; int /*<<< orphan*/  len; } ;
struct pktgen_dev {scalar_t__ delay; int last_ok; scalar_t__ clone_count; scalar_t__ clone_skb; scalar_t__ xmit_mode; scalar_t__ sofar; scalar_t__ count; struct sk_buff* skb; int /*<<< orphan*/  errors; int /*<<< orphan*/  odevname; int /*<<< orphan*/  last_pkt_size; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  seq_num; int /*<<< orphan*/  next_tx; struct net_device* odev; int /*<<< orphan*/  burst; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct netdev_queue*) ; 
 scalar_t__ M_NETIF_RECEIVE ; 
 scalar_t__ M_QUEUE_XMIT ; 
#define  NETDEV_TX_BUSY 132 
#define  NETDEV_TX_OK 131 
 int NET_RX_DROP ; 
#define  NET_XMIT_CN 130 
#define  NET_XMIT_DROP 129 
#define  NET_XMIT_SUCCESS 128 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ULLONG_MAX ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct net_device*,struct pktgen_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct sk_buff*,struct net_device*,struct netdev_queue*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 unsigned int FUNC17 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC18 (struct pktgen_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pktgen_dev*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 struct netdev_queue* FUNC27 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (struct pktgen_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (unsigned int) ; 

__attribute__((used)) static void FUNC32(struct pktgen_dev *pkt_dev)
{
	unsigned int burst = FUNC2(pkt_dev->burst);
	struct net_device *odev = pkt_dev->odev;
	struct netdev_queue *txq;
	struct sk_buff *skb;
	int ret;

	/* If device is offline, then don't send */
	if (FUNC31(!FUNC16(odev) || !FUNC14(odev))) {
		FUNC18(pkt_dev);
		return;
	}

	/* This is max DELAY, this has special meaning of
	 * "never transmit"
	 */
	if (FUNC31(pkt_dev->delay == ULLONG_MAX)) {
		pkt_dev->next_tx = FUNC8(FUNC9(), ULONG_MAX);
		return;
	}

	/* If no skb or clone count exhausted then get new one */
	if (!pkt_dev->skb || (pkt_dev->last_ok &&
			      ++pkt_dev->clone_count >= pkt_dev->clone_skb)) {
		/* build a new pkt */
		FUNC7(pkt_dev->skb);

		pkt_dev->skb = FUNC6(odev, pkt_dev);
		if (pkt_dev->skb == NULL) {
			FUNC20("ERROR: couldn't allocate skb in fill_packet\n");
			FUNC26();
			pkt_dev->clone_count--;	/* back out increment, OOM */
			return;
		}
		pkt_dev->last_pkt_size = pkt_dev->skb->len;
		pkt_dev->clone_count = 0;	/* reset counter */
	}

	if (pkt_dev->delay && pkt_dev->last_ok)
		FUNC30(pkt_dev, pkt_dev->next_tx);

	if (pkt_dev->xmit_mode == M_NETIF_RECEIVE) {
		skb = pkt_dev->skb;
		skb->protocol = FUNC5(skb, skb->dev);
		FUNC21(burst, &skb->users);
		FUNC10();
		do {
			ret = FUNC15(skb);
			if (ret == NET_RX_DROP)
				pkt_dev->errors++;
			pkt_dev->sofar++;
			pkt_dev->seq_num++;
			if (FUNC24(&skb->users) != burst) {
				/* skb was queued by rps/rfs or taps,
				 * so cannot reuse this skb
				 */
				FUNC3(FUNC25(burst - 1, &skb->users));
				/* get out of the loop and wait
				 * until skb is consumed
				 */
				break;
			}
			/* skb was 'freed' by stack, so clean few
			 * bits and reuse it
			 */
			FUNC28(skb);
		} while (--burst > 0);
		goto out; /* Skips xmit_mode M_START_XMIT */
	} else if (pkt_dev->xmit_mode == M_QUEUE_XMIT) {
		FUNC10();
		FUNC23(&pkt_dev->skb->users);

		ret = FUNC4(pkt_dev->skb);
		switch (ret) {
		case NET_XMIT_SUCCESS:
			pkt_dev->sofar++;
			pkt_dev->seq_num++;
			pkt_dev->tx_bytes += pkt_dev->last_pkt_size;
			break;
		case NET_XMIT_DROP:
		case NET_XMIT_CN:
		/* These are all valid return codes for a qdisc but
		 * indicate packets are being dropped or will likely
		 * be dropped soon.
		 */
		case NETDEV_TX_BUSY:
		/* qdisc may call dev_hard_start_xmit directly in cases
		 * where no queues exist e.g. loopback device, virtual
		 * devices, etc. In this case we need to handle
		 * NETDEV_TX_ codes.
		 */
		default:
			pkt_dev->errors++;
			FUNC12("%s xmit error: %d\n",
					     pkt_dev->odevname, ret);
			break;
		}
		goto out;
	}

	txq = FUNC27(odev, pkt_dev->skb);

	FUNC10();

	FUNC0(odev, txq, FUNC29());

	if (FUNC31(FUNC17(txq))) {
		ret = NETDEV_TX_BUSY;
		pkt_dev->last_ok = 0;
		goto unlock;
	}
	FUNC21(burst, &pkt_dev->skb->users);

xmit_more:
	ret = FUNC13(pkt_dev->skb, odev, txq, --burst > 0);

	switch (ret) {
	case NETDEV_TX_OK:
		pkt_dev->last_ok = 1;
		pkt_dev->sofar++;
		pkt_dev->seq_num++;
		pkt_dev->tx_bytes += pkt_dev->last_pkt_size;
		if (burst > 0 && !FUNC17(txq))
			goto xmit_more;
		break;
	case NET_XMIT_DROP:
	case NET_XMIT_CN:
		/* skb has been consumed */
		pkt_dev->errors++;
		break;
	default: /* Drivers are not supposed to return other values! */
		FUNC12("%s xmit error: %d\n",
				     pkt_dev->odevname, ret);
		pkt_dev->errors++;
		/* fall through */
	case NETDEV_TX_BUSY:
		/* Retry it next time */
		FUNC22(&(pkt_dev->skb->users));
		pkt_dev->last_ok = 0;
	}
	if (FUNC31(burst))
		FUNC3(FUNC25(burst, &pkt_dev->skb->users));
unlock:
	FUNC1(odev, txq);

out:
	FUNC11();

	/* If pkt_dev->count is zero, then run forever */
	if ((pkt_dev->count != 0) && (pkt_dev->sofar >= pkt_dev->count)) {
		FUNC19(pkt_dev);

		/* Done with this */
		FUNC18(pkt_dev);
	}
}