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
struct tcp_sock {int /*<<< orphan*/  first_tx_mstamp; } ;
struct TYPE_2__ {scalar_t__ delivered_mstamp; int /*<<< orphan*/  first_tx_mstamp; int /*<<< orphan*/  is_app_limited; int /*<<< orphan*/  delivered; } ;
struct tcp_skb_cb {int sacked; TYPE_1__ tx; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rate_sample {int is_retrans; int /*<<< orphan*/  interval_us; int /*<<< orphan*/  is_app_limited; scalar_t__ prior_mstamp; int /*<<< orphan*/  prior_delivered; } ;

/* Variables and functions */
 int TCPCB_RETRANS ; 
 int TCPCB_SACKED_ACKED ; 
 struct tcp_skb_cb* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct sock *sk, struct sk_buff *skb,
			    struct rate_sample *rs)
{
	struct tcp_sock *tp = FUNC2(sk);
	struct tcp_skb_cb *scb = FUNC0(skb);

	if (!scb->tx.delivered_mstamp)
		return;

	if (!rs->prior_delivered ||
	    FUNC1(scb->tx.delivered, rs->prior_delivered)) {
		rs->prior_delivered  = scb->tx.delivered;
		rs->prior_mstamp     = scb->tx.delivered_mstamp;
		rs->is_app_limited   = scb->tx.is_app_limited;
		rs->is_retrans	     = scb->sacked & TCPCB_RETRANS;

		/* Record send time of most recently ACKed packet: */
		tp->first_tx_mstamp  = FUNC3(skb);
		/* Find the duration of the "send phase" of this window: */
		rs->interval_us = FUNC4(tp->first_tx_mstamp,
						     scb->tx.first_tx_mstamp);

	}
	/* Mark off the skb delivered once it's sacked to avoid being
	 * used again when it's cumulatively acked. For acked packets
	 * we don't need to reset since it'll be freed soon.
	 */
	if (scb->sacked & TCPCB_SACKED_ACKED)
		scb->tx.delivered_mstamp = 0;
}