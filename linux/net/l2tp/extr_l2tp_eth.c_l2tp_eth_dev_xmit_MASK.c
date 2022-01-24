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
struct sk_buff {unsigned int len; } ;
struct net_device {int dummy; } ;
struct l2tp_session {int /*<<< orphan*/  hdr_len; } ;
struct l2tp_eth {int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; struct l2tp_session* session; } ;

/* Variables and functions */
 int NETDEV_TX_OK ; 
 int NET_XMIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct l2tp_session*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 struct l2tp_eth* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct net_device *dev)
{
	struct l2tp_eth *priv = FUNC4(dev);
	struct l2tp_session *session = priv->session;
	unsigned int len = skb->len;
	int ret = FUNC2(session, skb, session->hdr_len);

	if (FUNC3(ret == NET_XMIT_SUCCESS)) {
		FUNC0(len, &priv->tx_bytes);
		FUNC1(&priv->tx_packets);
	} else {
		FUNC1(&priv->tx_dropped);
	}
	return NETDEV_TX_OK;
}