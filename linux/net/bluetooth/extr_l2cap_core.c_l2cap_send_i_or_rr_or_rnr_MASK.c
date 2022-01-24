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
struct l2cap_ctrl {int sframe; int final; int /*<<< orphan*/  super; int /*<<< orphan*/  reqseq; } ;
struct l2cap_chan {scalar_t__ unacked_frames; int /*<<< orphan*/  conn_state; int /*<<< orphan*/  buffer_seq; } ;
typedef  int /*<<< orphan*/  control ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*) ; 
 int /*<<< orphan*/  CONN_LOCAL_BUSY ; 
 int /*<<< orphan*/  CONN_REMOTE_BUSY ; 
 int /*<<< orphan*/  CONN_SEND_FBIT ; 
 int /*<<< orphan*/  L2CAP_SUPER_RNR ; 
 int /*<<< orphan*/  L2CAP_SUPER_RR ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_ctrl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct l2cap_chan *chan)
{
	struct l2cap_ctrl control;

	FUNC0("chan %p", chan);

	FUNC4(&control, 0, sizeof(control));
	control.sframe = 1;
	control.final = 1;
	control.reqseq = chan->buffer_seq;
	FUNC5(CONN_SEND_FBIT, &chan->conn_state);

	if (FUNC7(CONN_LOCAL_BUSY, &chan->conn_state)) {
		control.super = L2CAP_SUPER_RNR;
		FUNC3(chan, &control);
	}

	if (FUNC6(CONN_REMOTE_BUSY, &chan->conn_state) &&
	    chan->unacked_frames > 0)
		FUNC1(chan);

	/* Send pending iframes */
	FUNC2(chan);

	if (!FUNC7(CONN_LOCAL_BUSY, &chan->conn_state) &&
	    FUNC7(CONN_SEND_FBIT, &chan->conn_state)) {
		/* F-bit wasn't sent in an s-frame or i-frame yet, so
		 * send it now.
		 */
		control.super = L2CAP_SUPER_RR;
		FUNC3(chan, &control);
	}
}