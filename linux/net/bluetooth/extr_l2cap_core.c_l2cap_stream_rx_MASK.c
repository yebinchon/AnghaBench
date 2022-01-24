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
struct sk_buff {int dummy; } ;
struct l2cap_ctrl {void* txseq; } ;
struct l2cap_chan {void* expected_tx_seq; void* last_acked_seq; scalar_t__ sdu_len; int /*<<< orphan*/ * sdu_last_frag; struct sk_buff* sdu; void* buffer_seq; int /*<<< orphan*/  rx_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,...) ; 
 scalar_t__ L2CAP_TXSEQ_EXPECTED ; 
 void* FUNC1 (struct l2cap_chan*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct l2cap_chan*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*,struct sk_buff*,struct l2cap_ctrl*) ; 

__attribute__((used)) static int FUNC6(struct l2cap_chan *chan, struct l2cap_ctrl *control,
			   struct sk_buff *skb)
{
	FUNC0("chan %p, control %p, skb %p, state %d", chan, control, skb,
	       chan->rx_state);

	if (FUNC3(chan, control->txseq) ==
	    L2CAP_TXSEQ_EXPECTED) {
		FUNC4(chan, control);

		FUNC0("buffer_seq %d->%d", chan->buffer_seq,
		       FUNC1(chan, chan->buffer_seq));

		chan->buffer_seq = FUNC1(chan, chan->buffer_seq);

		FUNC5(chan, skb, control);
	} else {
		if (chan->sdu) {
			FUNC2(chan->sdu);
			chan->sdu = NULL;
		}
		chan->sdu_last_frag = NULL;
		chan->sdu_len = 0;

		if (skb) {
			FUNC0("Freeing %p", skb);
			FUNC2(skb);
		}
	}

	chan->last_acked_seq = control->txseq;
	chan->expected_tx_seq = FUNC1(chan, control->txseq);

	return 0;
}