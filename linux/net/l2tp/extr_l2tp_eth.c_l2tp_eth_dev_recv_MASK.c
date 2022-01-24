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
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct l2tp_session {int debug; int /*<<< orphan*/  name; } ;
struct l2tp_eth_sess {int /*<<< orphan*/  dev; } ;
struct l2tp_eth {int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 unsigned int ETH_HLEN ; 
 int L2TP_MSG_DATA ; 
 scalar_t__ NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct l2tp_eth_sess* FUNC4 (struct l2tp_session*) ; 
 unsigned int FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 struct l2tp_eth* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,unsigned int) ; 
 struct net_device* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC16(struct l2tp_session *session, struct sk_buff *skb, int data_len)
{
	struct l2tp_eth_sess *spriv = FUNC4(session);
	struct net_device *dev;
	struct l2tp_eth *priv;

	if (session->debug & L2TP_MSG_DATA) {
		unsigned int length;

		length = FUNC5(32u, skb->len);
		if (!FUNC10(skb, length))
			goto error;

		FUNC8("%s: eth recv\n", session->name);
		FUNC9("", DUMP_PREFIX_OFFSET, skb->data, length);
	}

	if (!FUNC10(skb, ETH_HLEN))
		goto error;

	FUNC14(skb);

	/* checksums verified by L2TP */
	skb->ip_summed = CHECKSUM_NONE;

	FUNC15(skb);
	FUNC7(skb);

	FUNC12();
	dev = FUNC11(spriv->dev);
	if (!dev)
		goto error_rcu;

	priv = FUNC6(dev);
	if (FUNC2(dev, skb) == NET_RX_SUCCESS) {
		FUNC1(&priv->rx_packets);
		FUNC0(data_len, &priv->rx_bytes);
	} else {
		FUNC1(&priv->rx_errors);
	}
	FUNC13();

	return;

error_rcu:
	FUNC13();
error:
	FUNC3(skb);
}