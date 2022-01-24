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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct l2cap_ctrl {int /*<<< orphan*/  reqseq; } ;
struct l2cap_chan {int rx_state; int /*<<< orphan*/  expected_ack_seq; int /*<<< orphan*/  next_tx_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,struct l2cap_ctrl*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  ECONNRESET ; 
#define  L2CAP_RX_STATE_RECV 131 
#define  L2CAP_RX_STATE_SREJ_SENT 130 
#define  L2CAP_RX_STATE_WAIT_F 129 
#define  L2CAP_RX_STATE_WAIT_P 128 
 scalar_t__ FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct l2cap_chan *chan, struct l2cap_ctrl *control,
		    struct sk_buff *skb, u8 event)
{
	int err = 0;

	FUNC0("chan %p, control %p, skb %p, event %d, state %d", chan,
	       control, skb, event, chan->rx_state);

	if (FUNC1(chan, control->reqseq)) {
		switch (chan->rx_state) {
		case L2CAP_RX_STATE_RECV:
			err = FUNC2(chan, control, skb, event);
			break;
		case L2CAP_RX_STATE_SREJ_SENT:
			err = FUNC3(chan, control, skb,
						       event);
			break;
		case L2CAP_RX_STATE_WAIT_P:
			err = FUNC5(chan, control, skb, event);
			break;
		case L2CAP_RX_STATE_WAIT_F:
			err = FUNC4(chan, control, skb, event);
			break;
		default:
			/* shut it down */
			break;
		}
	} else {
		FUNC0("Invalid reqseq %d (next_tx_seq %d, expected_ack_seq %d",
		       control->reqseq, chan->next_tx_seq,
		       chan->expected_ack_seq);
		FUNC6(chan, ECONNRESET);
	}

	return err;
}