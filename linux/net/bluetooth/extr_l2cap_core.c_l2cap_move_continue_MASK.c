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
typedef  scalar_t__ u16 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int move_state; int /*<<< orphan*/  local_amp_id; int /*<<< orphan*/  move_id; int /*<<< orphan*/  conn; TYPE_1__* hs_hcon; int /*<<< orphan*/  conn_state; } ;
struct hci_chan {TYPE_1__* conn; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  l2cap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONNECTED ; 
 int /*<<< orphan*/  CONN_LOCAL_BUSY ; 
 int /*<<< orphan*/  L2CAP_MC_CONFIRMED ; 
 int /*<<< orphan*/  L2CAP_MC_UNCONFIRMED ; 
 int /*<<< orphan*/  L2CAP_MOVE_ERTX_TIMEOUT ; 
 int L2CAP_MOVE_WAIT_CONFIRM_RSP ; 
 int L2CAP_MOVE_WAIT_LOCAL_BUSY ; 
 void* L2CAP_MOVE_WAIT_LOGICAL_CFM ; 
#define  L2CAP_MOVE_WAIT_LOGICAL_COMP 130 
#define  L2CAP_MOVE_WAIT_RSP 129 
#define  L2CAP_MOVE_WAIT_RSP_SUCCESS 128 
 scalar_t__ L2CAP_MR_PEND ; 
 scalar_t__ L2CAP_MR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 
 struct l2cap_chan* FUNC3 (struct l2cap_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*,struct hci_chan*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct l2cap_conn *conn, u16 icid, u16 result)
{
	struct l2cap_chan *chan;
	struct hci_chan *hchan = NULL;

	chan = FUNC3(conn, icid);
	if (!chan) {
		FUNC7(conn, icid);
		return;
	}

	FUNC0(chan);
	if (result == L2CAP_MR_PEND)
		FUNC1(chan, L2CAP_MOVE_ERTX_TIMEOUT);

	switch (chan->move_state) {
	case L2CAP_MOVE_WAIT_LOGICAL_COMP:
		/* Move confirm will be sent when logical link
		 * is complete.
		 */
		chan->move_state = L2CAP_MOVE_WAIT_LOGICAL_CFM;
		break;
	case L2CAP_MOVE_WAIT_RSP_SUCCESS:
		if (result == L2CAP_MR_PEND) {
			break;
		} else if (FUNC8(CONN_LOCAL_BUSY,
				    &chan->conn_state)) {
			chan->move_state = L2CAP_MOVE_WAIT_LOCAL_BUSY;
		} else {
			/* Logical link is up or moving to BR/EDR,
			 * proceed with move
			 */
			chan->move_state = L2CAP_MOVE_WAIT_CONFIRM_RSP;
			FUNC6(chan, L2CAP_MC_CONFIRMED);
		}
		break;
	case L2CAP_MOVE_WAIT_RSP:
		/* Moving to AMP */
		if (result == L2CAP_MR_SUCCESS) {
			/* Remote is ready, send confirm immediately
			 * after logical link is ready
			 */
			chan->move_state = L2CAP_MOVE_WAIT_LOGICAL_CFM;
		} else {
			/* Both logical link and move success
			 * are required to confirm
			 */
			chan->move_state = L2CAP_MOVE_WAIT_LOGICAL_COMP;
		}

		/* Placeholder - get hci_chan for logical link */
		if (!hchan) {
			/* Logical link not available */
			FUNC6(chan, L2CAP_MC_UNCONFIRMED);
			break;
		}

		/* If the logical link is not yet connected, do not
		 * send confirmation.
		 */
		if (hchan->state != BT_CONNECTED)
			break;

		/* Logical link is already ready to go */

		chan->hs_hcon = hchan->conn;
		chan->hs_hcon->l2cap_data = chan->conn;

		if (result == L2CAP_MR_SUCCESS) {
			/* Can confirm now */
			FUNC6(chan, L2CAP_MC_CONFIRMED);
		} else {
			/* Now only need move success
			 * to confirm
			 */
			chan->move_state = L2CAP_MOVE_WAIT_RSP_SUCCESS;
		}

		FUNC4(chan, hchan, L2CAP_MR_SUCCESS);
		break;
	default:
		/* Any other amp move state means the move failed. */
		chan->move_id = chan->local_amp_id;
		FUNC5(chan);
		FUNC6(chan, L2CAP_MC_UNCONFIRMED);
	}

	FUNC2(chan);
}