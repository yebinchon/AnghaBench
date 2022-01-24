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
typedef  scalar_t__ u16 ;
struct l2cap_ctrl {int sframe; scalar_t__ reqseq; int /*<<< orphan*/  super; } ;
struct l2cap_chan {scalar_t__ expected_tx_seq; int /*<<< orphan*/  srej_list; int /*<<< orphan*/  srej_q; } ;
typedef  int /*<<< orphan*/  control ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,scalar_t__) ; 
 int /*<<< orphan*/  L2CAP_SUPER_SREJ ; 
 scalar_t__ FUNC1 (struct l2cap_chan*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_ctrl*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct l2cap_chan *chan, u16 txseq)
{
	struct l2cap_ctrl control;
	u16 seq;

	FUNC0("chan %p, txseq %u", chan, txseq);

	FUNC5(&control, 0, sizeof(control));
	control.sframe = 1;
	control.super = L2CAP_SUPER_SREJ;

	for (seq = chan->expected_tx_seq; seq != txseq;
	     seq = FUNC1(chan, seq)) {
		if (!FUNC2(&chan->srej_q, seq)) {
			control.reqseq = seq;
			FUNC3(chan, &control);
			FUNC4(&chan->srej_list, seq);
		}
	}

	chan->expected_tx_seq = FUNC1(chan, txseq);
}