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
struct l2cap_chan {scalar_t__ state; int move_role; int /*<<< orphan*/  move_state; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  L2CAP_MC_UNCONFIRMED ; 
#define  L2CAP_MOVE_ROLE_INITIATOR 129 
#define  L2CAP_MOVE_ROLE_RESPONDER 128 
 int /*<<< orphan*/  L2CAP_MOVE_WAIT_LOGICAL_CFM ; 
 int /*<<< orphan*/  L2CAP_MOVE_WAIT_LOGICAL_COMP ; 
 int /*<<< orphan*/  L2CAP_MR_NOT_SUPP ; 
 int /*<<< orphan*/  FUNC0 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct l2cap_chan *chan)
{
	/* Logical link setup failed */
	if (chan->state != BT_CONNECTED) {
		/* Create channel failure, disconnect */
		FUNC1(chan, ECONNRESET);
		return;
	}

	switch (chan->move_role) {
	case L2CAP_MOVE_ROLE_RESPONDER:
		FUNC0(chan);
		FUNC3(chan, L2CAP_MR_NOT_SUPP);
		break;
	case L2CAP_MOVE_ROLE_INITIATOR:
		if (chan->move_state == L2CAP_MOVE_WAIT_LOGICAL_COMP ||
		    chan->move_state == L2CAP_MOVE_WAIT_LOGICAL_CFM) {
			/* Remote has only sent pending or
			 * success responses, clean up
			 */
			FUNC0(chan);
		}

		/* Other amp move states imply that the move
		 * has already aborted
		 */
		FUNC2(chan, L2CAP_MC_UNCONFIRMED);
		break;
	}
}