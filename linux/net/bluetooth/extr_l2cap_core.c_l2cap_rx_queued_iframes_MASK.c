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
struct sk_buff {int dummy; } ;
struct l2cap_chan {int /*<<< orphan*/  rx_state; int /*<<< orphan*/  srej_q; int /*<<< orphan*/  buffer_seq; int /*<<< orphan*/  conn_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  l2cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,...) ; 
 int /*<<< orphan*/  CONN_LOCAL_BUSY ; 
 int /*<<< orphan*/  L2CAP_RX_STATE_RECV ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct l2cap_chan*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct l2cap_chan *chan)
{
	int err = 0;
	/* Pass sequential frames to l2cap_reassemble_sdu()
	 * until a gap is encountered.
	 */

	FUNC0("chan %p", chan);

	while (!FUNC9(CONN_LOCAL_BUSY, &chan->conn_state)) {
		struct sk_buff *skb;
		FUNC0("Searching for skb with txseq %d (queue len %d)",
		       chan->buffer_seq, FUNC7(&chan->srej_q));

		skb = FUNC3(&chan->srej_q, chan->buffer_seq);

		if (!skb)
			break;

		FUNC8(skb, &chan->srej_q);
		chan->buffer_seq = FUNC1(chan, chan->buffer_seq);
		err = FUNC4(chan, skb, &FUNC2(skb)->l2cap);
		if (err)
			break;
	}

	if (FUNC6(&chan->srej_q)) {
		chan->rx_state = L2CAP_RX_STATE_RECV;
		FUNC5(chan);
	}

	return err;
}