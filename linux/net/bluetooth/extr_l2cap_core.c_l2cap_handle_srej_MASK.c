#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct l2cap_ctrl {int /*<<< orphan*/  reqseq; scalar_t__ final; scalar_t__ poll; } ;
struct l2cap_chan {scalar_t__ tx_state; int /*<<< orphan*/  srej_save_reqseq; int /*<<< orphan*/  conn_state; int /*<<< orphan*/  max_tx; int /*<<< orphan*/  tx_q; int /*<<< orphan*/  next_tx_seq; } ;
struct TYPE_3__ {int /*<<< orphan*/  retries; } ;
struct TYPE_4__ {TYPE_1__ l2cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,...) ; 
 int /*<<< orphan*/  CONN_REMOTE_BUSY ; 
 int /*<<< orphan*/  CONN_SEND_FBIT ; 
 int /*<<< orphan*/  CONN_SREJ_ACT ; 
 int /*<<< orphan*/  ECONNRESET ; 
 scalar_t__ L2CAP_TX_STATE_WAIT_F ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct l2cap_chan *chan,
			      struct l2cap_ctrl *control)
{
	struct sk_buff *skb;

	FUNC0("chan %p, control %p", chan, control);

	if (control->reqseq == chan->next_tx_seq) {
		FUNC0("Invalid reqseq %d, disconnecting", control->reqseq);
		FUNC8(chan, ECONNRESET);
		return;
	}

	skb = FUNC4(&chan->tx_q, control->reqseq);

	if (skb == NULL) {
		FUNC0("Seq %d not available for retransmission",
		       control->reqseq);
		return;
	}

	if (chan->max_tx != 0 && FUNC1(skb)->l2cap.retries >= chan->max_tx) {
		FUNC0("Retry limit exceeded (%d)", chan->max_tx);
		FUNC8(chan, ECONNRESET);
		return;
	}

	FUNC2(CONN_REMOTE_BUSY, &chan->conn_state);

	if (control->poll) {
		FUNC5(chan, control);

		FUNC9(CONN_SEND_FBIT, &chan->conn_state);
		FUNC7(chan, control);
		FUNC3(chan);

		if (chan->tx_state == L2CAP_TX_STATE_WAIT_F) {
			FUNC9(CONN_SREJ_ACT, &chan->conn_state);
			chan->srej_save_reqseq = control->reqseq;
		}
	} else {
		FUNC6(chan, control);

		if (control->final) {
			if (chan->srej_save_reqseq != control->reqseq ||
			    !FUNC10(CONN_SREJ_ACT,
						&chan->conn_state))
				FUNC7(chan, control);
		} else {
			FUNC7(chan, control);
			if (chan->tx_state == L2CAP_TX_STATE_WAIT_F) {
				FUNC9(CONN_SREJ_ACT, &chan->conn_state);
				chan->srej_save_reqseq = control->reqseq;
			}
		}
	}
}