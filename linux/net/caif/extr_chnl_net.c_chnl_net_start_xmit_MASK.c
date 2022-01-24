#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct TYPE_10__ {int tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_4__ stats; } ;
struct TYPE_9__ {TYPE_5__* dn; } ;
struct TYPE_8__ {scalar_t__ protocol; } ;
struct chnl_net {TYPE_3__ chnl; TYPE_2__ conn_req; int /*<<< orphan*/  flowenabled; TYPE_1__* netdev; } ;
struct cfpkt {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_11__ {int (* transmit ) (TYPE_5__*,struct cfpkt*) ;} ;
struct TYPE_7__ {scalar_t__ mtu; } ;

/* Variables and functions */
 scalar_t__ CAIFPROTO_DATAGRAM_LOOP ; 
 int /*<<< orphan*/  CAIF_DIR_OUT ; 
 int NETDEV_TX_OK ; 
 struct cfpkt* FUNC0 (int /*<<< orphan*/ ,void*) ; 
 TYPE_6__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct chnl_net* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (TYPE_5__*,struct cfpkt*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct net_device *dev)
{
	struct chnl_net *priv;
	struct cfpkt *pkt = NULL;
	int len;
	int result = -1;
	/* Get our private data. */
	priv = FUNC3(dev);

	if (skb->len > priv->netdev->mtu) {
		FUNC5("Size of skb exceeded MTU\n");
		FUNC2(skb);
		dev->stats.tx_errors++;
		return NETDEV_TX_OK;
	}

	if (!priv->flowenabled) {
		FUNC4("dropping packets flow off\n");
		FUNC2(skb);
		dev->stats.tx_dropped++;
		return NETDEV_TX_OK;
	}

	if (priv->conn_req.protocol == CAIFPROTO_DATAGRAM_LOOP)
		FUNC7(FUNC1(skb)->saddr, FUNC1(skb)->daddr);

	/* Store original SKB length. */
	len = skb->len;

	pkt = FUNC0(CAIF_DIR_OUT, (void *) skb);

	/* Send the packet down the stack. */
	result = priv->chnl.dn->transmit(priv->chnl.dn, pkt);
	if (result) {
		dev->stats.tx_dropped++;
		return NETDEV_TX_OK;
	}

	/* Update statistics. */
	dev->stats.tx_packets++;
	dev->stats.tx_bytes += len;

	return NETDEV_TX_OK;
}