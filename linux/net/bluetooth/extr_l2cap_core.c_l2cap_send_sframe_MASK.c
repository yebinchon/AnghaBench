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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct l2cap_ctrl {int final; scalar_t__ super; int /*<<< orphan*/  poll; int /*<<< orphan*/  reqseq; int /*<<< orphan*/  sframe; } ;
struct l2cap_chan {int /*<<< orphan*/  flags; int /*<<< orphan*/  last_acked_seq; int /*<<< orphan*/  conn_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,...) ; 
 int /*<<< orphan*/  CONN_RNR_SENT ; 
 int /*<<< orphan*/  CONN_SEND_FBIT ; 
 int /*<<< orphan*/  FLAG_EXT_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ L2CAP_SUPER_RNR ; 
 scalar_t__ L2CAP_SUPER_RR ; 
 scalar_t__ L2CAP_SUPER_SREJ ; 
 scalar_t__ FUNC2 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC7 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_chan*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct l2cap_chan *chan,
			      struct l2cap_ctrl *control)
{
	struct sk_buff *skb;
	u32 control_field;

	FUNC0("chan %p, control %p", chan, control);

	if (!control->sframe)
		return;

	if (FUNC2(chan))
		return;

	if (FUNC10(CONN_SEND_FBIT, &chan->conn_state) &&
	    !control->poll)
		control->final = 1;

	if (control->super == L2CAP_SUPER_RR)
		FUNC6(CONN_RNR_SENT, &chan->conn_state);
	else if (control->super == L2CAP_SUPER_RNR)
		FUNC9(CONN_RNR_SENT, &chan->conn_state);

	if (control->super != L2CAP_SUPER_SREJ) {
		chan->last_acked_seq = control->reqseq;
		FUNC3(chan);
	}

	FUNC0("reqseq %d, final %d, poll %d, super %d", control->reqseq,
	       control->final, control->poll, control->super);

	if (FUNC11(FLAG_EXT_CTRL, &chan->flags))
		control_field = FUNC5(control);
	else
		control_field = FUNC4(control);

	skb = FUNC7(chan, control_field);
	if (!FUNC1(skb))
		FUNC8(chan, skb);
}