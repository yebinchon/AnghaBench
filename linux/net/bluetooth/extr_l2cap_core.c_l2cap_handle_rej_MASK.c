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
struct l2cap_ctrl {scalar_t__ reqseq; scalar_t__ final; } ;
struct l2cap_chan {scalar_t__ next_tx_seq; scalar_t__ max_tx; scalar_t__ tx_state; int /*<<< orphan*/  conn_state; int /*<<< orphan*/  tx_q; } ;
struct TYPE_3__ {scalar_t__ retries; } ;
struct TYPE_4__ {TYPE_1__ l2cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  CONN_REJ_ACT ; 
 int /*<<< orphan*/  CONN_REMOTE_BUSY ; 
 int /*<<< orphan*/  ECONNRESET ; 
 scalar_t__ L2CAP_TX_STATE_WAIT_F ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct l2cap_chan *chan,
			     struct l2cap_ctrl *control)
{
	struct sk_buff *skb;

	FUNC0("chan %p, control %p", chan, control);

	if (control->reqseq == chan->next_tx_seq) {
		FUNC0("Invalid reqseq %d, disconnecting", control->reqseq);
		FUNC7(chan, ECONNRESET);
		return;
	}

	skb = FUNC4(&chan->tx_q, control->reqseq);

	if (chan->max_tx && skb &&
	    FUNC1(skb)->l2cap.retries >= chan->max_tx) {
		FUNC0("Retry limit exceeded (%d)", chan->max_tx);
		FUNC7(chan, ECONNRESET);
		return;
	}

	FUNC2(CONN_REMOTE_BUSY, &chan->conn_state);

	FUNC5(chan, control);

	if (control->final) {
		if (!FUNC9(CONN_REJ_ACT, &chan->conn_state))
			FUNC6(chan, control);
	} else {
		FUNC6(chan, control);
		FUNC3(chan);
		if (chan->tx_state == L2CAP_TX_STATE_WAIT_F)
			FUNC8(CONN_REJ_ACT, &chan->conn_state);
	}
}