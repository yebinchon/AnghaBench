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
typedef  int u16 ;
struct tcp_skb_cb {int txstamp_ack; scalar_t__ seq; } ;
struct sock {int dummy; } ;
struct skb_shared_info {scalar_t__ tskey; int /*<<< orphan*/  tx_flags; } ;
struct sk_buff {scalar_t__ len; } ;

/* Variables and functions */
 int SOF_TIMESTAMPING_TX_ACK ; 
 int SOF_TIMESTAMPING_TX_RECORD_MASK ; 
 struct tcp_skb_cb* FUNC0 (struct sk_buff*) ; 
 struct skb_shared_info* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk, u16 tsflags)
{
	struct sk_buff *skb = FUNC3(sk);

	if (tsflags && skb) {
		struct skb_shared_info *shinfo = FUNC1(skb);
		struct tcp_skb_cb *tcb = FUNC0(skb);

		FUNC2(sk, tsflags, &shinfo->tx_flags);
		if (tsflags & SOF_TIMESTAMPING_TX_ACK)
			tcb->txstamp_ack = 1;
		if (tsflags & SOF_TIMESTAMPING_TX_RECORD_MASK)
			shinfo->tskey = FUNC0(skb)->seq + skb->len - 1;
	}
}