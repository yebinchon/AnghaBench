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
struct l2cap_chan {int move_state; int /*<<< orphan*/  move_role; int /*<<< orphan*/  conn_state; int /*<<< orphan*/  conn; TYPE_1__* hs_hcon; } ;
struct hci_chan {TYPE_1__* conn; } ;
struct TYPE_2__ {int /*<<< orphan*/  l2cap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  CONN_LOCAL_BUSY ; 
 int /*<<< orphan*/  L2CAP_MC_CONFIRMED ; 
 int /*<<< orphan*/  L2CAP_MOVE_ROLE_INITIATOR ; 
 int /*<<< orphan*/  L2CAP_MOVE_ROLE_RESPONDER ; 
 int L2CAP_MOVE_STABLE ; 
 int L2CAP_MOVE_WAIT_CONFIRM ; 
 int L2CAP_MOVE_WAIT_CONFIRM_RSP ; 
 int L2CAP_MOVE_WAIT_LOCAL_BUSY ; 
#define  L2CAP_MOVE_WAIT_LOGICAL_CFM 129 
#define  L2CAP_MOVE_WAIT_LOGICAL_COMP 128 
 int L2CAP_MOVE_WAIT_RSP_SUCCESS ; 
 int /*<<< orphan*/  L2CAP_MR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct l2cap_chan *chan,
				      struct hci_chan *hchan)
{
	chan->hs_hcon = hchan->conn;
	chan->hs_hcon->l2cap_data = chan->conn;

	FUNC0("move_state %d", chan->move_state);

	switch (chan->move_state) {
	case L2CAP_MOVE_WAIT_LOGICAL_COMP:
		/* Move confirm will be sent after a success
		 * response is received
		 */
		chan->move_state = L2CAP_MOVE_WAIT_RSP_SUCCESS;
		break;
	case L2CAP_MOVE_WAIT_LOGICAL_CFM:
		if (FUNC4(CONN_LOCAL_BUSY, &chan->conn_state)) {
			chan->move_state = L2CAP_MOVE_WAIT_LOCAL_BUSY;
		} else if (chan->move_role == L2CAP_MOVE_ROLE_INITIATOR) {
			chan->move_state = L2CAP_MOVE_WAIT_CONFIRM_RSP;
			FUNC2(chan, L2CAP_MC_CONFIRMED);
		} else if (chan->move_role == L2CAP_MOVE_ROLE_RESPONDER) {
			chan->move_state = L2CAP_MOVE_WAIT_CONFIRM;
			FUNC3(chan, L2CAP_MR_SUCCESS);
		}
		break;
	default:
		/* Move was not in expected state, free the channel */
		FUNC1(chan);

		chan->move_state = L2CAP_MOVE_STABLE;
	}
}