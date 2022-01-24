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
typedef  int u16 ;
struct l2cap_move_chan_rsp {void* result; void* icid; } ;
struct l2cap_move_chan_req {scalar_t__ dest_amp_id; int /*<<< orphan*/  icid; } ;
struct l2cap_conn {int local_fixed_chan; TYPE_1__* hcon; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;
struct l2cap_chan {scalar_t__ scid; scalar_t__ chan_policy; scalar_t__ mode; scalar_t__ local_amp_id; scalar_t__ move_role; scalar_t__ move_id; int dcid; int /*<<< orphan*/  move_state; int /*<<< orphan*/  conn_state; int /*<<< orphan*/  ident; } ;
struct hci_dev {scalar_t__ dev_type; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  rsp ;
struct TYPE_2__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 scalar_t__ AMP_ID_BREDR ; 
 scalar_t__ BT_CHANNEL_POLICY_BREDR_ONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  CONN_LOCAL_BUSY ; 
 int EINVAL ; 
 int EPROTO ; 
 scalar_t__ HCI_AMP ; 
 int /*<<< orphan*/  HCI_UP ; 
 scalar_t__ L2CAP_CID_DYN_START ; 
 int L2CAP_FC_A2MP ; 
 scalar_t__ L2CAP_MODE_ERTM ; 
 scalar_t__ L2CAP_MODE_STREAMING ; 
 int /*<<< orphan*/  L2CAP_MOVE_CHAN_RSP ; 
 scalar_t__ L2CAP_MOVE_ROLE_NONE ; 
 scalar_t__ L2CAP_MOVE_ROLE_RESPONDER ; 
 int /*<<< orphan*/  L2CAP_MOVE_WAIT_CONFIRM ; 
 int /*<<< orphan*/  L2CAP_MOVE_WAIT_LOCAL_BUSY ; 
 int /*<<< orphan*/  L2CAP_MOVE_WAIT_PREPARE ; 
 int L2CAP_MR_BAD_ID ; 
 int L2CAP_MR_COLLISION ; 
 int L2CAP_MR_NOT_ALLOWED ; 
 int L2CAP_MR_PEND ; 
 int L2CAP_MR_SAME_ID ; 
 int L2CAP_MR_SUCCESS ; 
 scalar_t__ FUNC1 (struct l2cap_chan*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 
 struct hci_dev* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*) ; 
 struct l2cap_chan* FUNC7 (struct l2cap_conn*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_move_chan_rsp*) ; 
 int /*<<< orphan*/  FUNC10 (struct l2cap_chan*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC13(struct l2cap_conn *conn,
					 struct l2cap_cmd_hdr *cmd,
					 u16 cmd_len, void *data)
{
	struct l2cap_move_chan_req *req = data;
	struct l2cap_move_chan_rsp rsp;
	struct l2cap_chan *chan;
	u16 icid = 0;
	u16 result = L2CAP_MR_NOT_ALLOWED;

	if (cmd_len != sizeof(*req))
		return -EPROTO;

	icid = FUNC11(req->icid);

	FUNC0("icid 0x%4.4x, dest_amp_id %d", icid, req->dest_amp_id);

	if (!(conn->local_fixed_chan & L2CAP_FC_A2MP))
		return -EINVAL;

	chan = FUNC7(conn, icid);
	if (!chan) {
		rsp.icid = FUNC3(icid);
		rsp.result = FUNC3(L2CAP_MR_NOT_ALLOWED);
		FUNC9(conn, cmd->ident, L2CAP_MOVE_CHAN_RSP,
			       sizeof(rsp), &rsp);
		return 0;
	}

	chan->ident = cmd->ident;

	if (chan->scid < L2CAP_CID_DYN_START ||
	    chan->chan_policy == BT_CHANNEL_POLICY_BREDR_ONLY ||
	    (chan->mode != L2CAP_MODE_ERTM &&
	     chan->mode != L2CAP_MODE_STREAMING)) {
		result = L2CAP_MR_NOT_ALLOWED;
		goto send_move_response;
	}

	if (chan->local_amp_id == req->dest_amp_id) {
		result = L2CAP_MR_SAME_ID;
		goto send_move_response;
	}

	if (req->dest_amp_id != AMP_ID_BREDR) {
		struct hci_dev *hdev;
		hdev = FUNC4(req->dest_amp_id);
		if (!hdev || hdev->dev_type != HCI_AMP ||
		    !FUNC12(HCI_UP, &hdev->flags)) {
			if (hdev)
				FUNC5(hdev);

			result = L2CAP_MR_BAD_ID;
			goto send_move_response;
		}
		FUNC5(hdev);
	}

	/* Detect a move collision.  Only send a collision response
	 * if this side has "lost", otherwise proceed with the move.
	 * The winner has the larger bd_addr.
	 */
	if ((FUNC1(chan) ||
	     chan->move_role != L2CAP_MOVE_ROLE_NONE) &&
	    FUNC2(&conn->hcon->src, &conn->hcon->dst) > 0) {
		result = L2CAP_MR_COLLISION;
		goto send_move_response;
	}

	chan->move_role = L2CAP_MOVE_ROLE_RESPONDER;
	FUNC8(chan);
	chan->move_id = req->dest_amp_id;
	icid = chan->dcid;

	if (req->dest_amp_id == AMP_ID_BREDR) {
		/* Moving to BR/EDR */
		if (FUNC12(CONN_LOCAL_BUSY, &chan->conn_state)) {
			chan->move_state = L2CAP_MOVE_WAIT_LOCAL_BUSY;
			result = L2CAP_MR_PEND;
		} else {
			chan->move_state = L2CAP_MOVE_WAIT_CONFIRM;
			result = L2CAP_MR_SUCCESS;
		}
	} else {
		chan->move_state = L2CAP_MOVE_WAIT_PREPARE;
		/* Placeholder - uncomment when amp functions are available */
		/*amp_accept_physical(chan, req->dest_amp_id);*/
		result = L2CAP_MR_PEND;
	}

send_move_response:
	FUNC10(chan, result);

	FUNC6(chan);

	return 0;
}