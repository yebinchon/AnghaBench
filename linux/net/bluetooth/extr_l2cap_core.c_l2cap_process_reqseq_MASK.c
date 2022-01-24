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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct l2cap_chan {scalar_t__ unacked_frames; int /*<<< orphan*/  expected_ack_seq; int /*<<< orphan*/  tx_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct l2cap_chan *chan, u16 reqseq)
{
	struct sk_buff *acked_skb;
	u16 ackseq;

	FUNC0("chan %p, reqseq %u", chan, reqseq);

	if (chan->unacked_frames == 0 || reqseq == chan->expected_ack_seq)
		return;

	FUNC0("expected_ack_seq %u, unacked_frames %u",
	       chan->expected_ack_seq, chan->unacked_frames);

	for (ackseq = chan->expected_ack_seq; ackseq != reqseq;
	     ackseq = FUNC2(chan, ackseq)) {

		acked_skb = FUNC4(&chan->tx_q, ackseq);
		if (acked_skb) {
			FUNC5(acked_skb, &chan->tx_q);
			FUNC3(acked_skb);
			chan->unacked_frames--;
		}
	}

	chan->expected_ack_seq = reqseq;

	if (chan->unacked_frames == 0)
		FUNC1(chan);

	FUNC0("unacked_frames %u", chan->unacked_frames);
}