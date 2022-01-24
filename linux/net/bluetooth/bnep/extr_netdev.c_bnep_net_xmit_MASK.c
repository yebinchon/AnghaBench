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
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bnep_session {TYPE_1__* sock; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {struct sock* sk; } ;

/* Variables and functions */
 scalar_t__ BNEP_TX_QUEUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct bnep_session*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct bnep_session*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct bnep_session* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC11(struct sk_buff *skb,
				 struct net_device *dev)
{
	struct bnep_session *s = FUNC4(dev);
	struct sock *sk = s->sock->sk;

	FUNC0("skb %p, dev %p", skb, dev);

#ifdef CONFIG_BT_BNEP_MC_FILTER
	if (bnep_net_mc_filter(skb, s)) {
		kfree_skb(skb);
		return NETDEV_TX_OK;
	}
#endif

#ifdef CONFIG_BT_BNEP_PROTO_FILTER
	if (bnep_net_proto_filter(skb, s)) {
		kfree_skb(skb);
		return NETDEV_TX_OK;
	}
#endif

	/*
	 * We cannot send L2CAP packets from here as we are potentially in a bh.
	 * So we have to queue them and wake up session thread which is sleeping
	 * on the sk_sleep(sk).
	 */
	FUNC6(dev);
	FUNC9(&sk->sk_write_queue, skb);
	FUNC10(FUNC7(sk));

	if (FUNC8(&sk->sk_write_queue) >= BNEP_TX_QUEUE_LEN) {
		FUNC0("tx queue is full");

		/* Stop queuing.
		 * Session thread will do netif_wake_queue() */
		FUNC5(dev);
	}

	return NETDEV_TX_OK;
}