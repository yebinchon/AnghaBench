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
struct l2cap_ctrl {int /*<<< orphan*/  reqseq; int /*<<< orphan*/  poll; } ;
struct l2cap_chan {int /*<<< orphan*/  conn_state; scalar_t__ unacked_frames; int /*<<< orphan*/  next_tx_seq; int /*<<< orphan*/ * tx_send_head; int /*<<< orphan*/  tx_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONN_SEND_FBIT ; 
 int EPROTO ; 
 int /*<<< orphan*/  L2CAP_EV_RECV_IFRAME ; 
 int FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct l2cap_chan*,struct l2cap_ctrl*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct l2cap_chan *chan,
				 struct l2cap_ctrl *control,
				 struct sk_buff *skb, u8 event)
{
	int err;

	FUNC0("chan %p, control %p, skb %p, event %d", chan, control, skb,
	       event);

	if (!control->poll)
		return -EPROTO;

	FUNC2(chan, control->reqseq);

	if (!FUNC7(&chan->tx_q))
		chan->tx_send_head = FUNC6(&chan->tx_q);
	else
		chan->tx_send_head = NULL;

	/* Rewind next_tx_seq to the point expected
	 * by the receiver.
	 */
	chan->next_tx_seq = control->reqseq;
	chan->unacked_frames = 0;

	err = FUNC1(chan);
	if (err)
		return err;

	FUNC5(CONN_SEND_FBIT, &chan->conn_state);
	FUNC4(chan);

	if (event == L2CAP_EV_RECV_IFRAME)
		return -EPROTO;

	return FUNC3(chan, control, NULL, event);
}