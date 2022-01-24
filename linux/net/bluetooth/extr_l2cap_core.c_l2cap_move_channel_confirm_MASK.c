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
typedef  int u16 ;
struct l2cap_move_chan_cfm {int /*<<< orphan*/  result; int /*<<< orphan*/  icid; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;
struct l2cap_chan {scalar_t__ move_state; scalar_t__ local_amp_id; scalar_t__ move_id; } ;

/* Variables and functions */
 scalar_t__ AMP_ID_BREDR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int EPROTO ; 
 int L2CAP_MC_CONFIRMED ; 
 scalar_t__ L2CAP_MOVE_WAIT_CONFIRM ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 
 struct l2cap_chan* FUNC3 (struct l2cap_conn*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_conn*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct l2cap_conn *conn,
				      struct l2cap_cmd_hdr *cmd,
				      u16 cmd_len, void *data)
{
	struct l2cap_move_chan_cfm *cfm = data;
	struct l2cap_chan *chan;
	u16 icid, result;

	if (cmd_len != sizeof(*cfm))
		return -EPROTO;

	icid = FUNC6(cfm->icid);
	result = FUNC6(cfm->result);

	FUNC0("icid 0x%4.4x, result 0x%4.4x", icid, result);

	chan = FUNC3(conn, icid);
	if (!chan) {
		/* Spec requires a response even if the icid was not found */
		FUNC5(conn, cmd->ident, icid);
		return 0;
	}

	if (chan->move_state == L2CAP_MOVE_WAIT_CONFIRM) {
		if (result == L2CAP_MC_CONFIRMED) {
			chan->local_amp_id = chan->move_id;
			if (chan->local_amp_id == AMP_ID_BREDR)
				FUNC1(chan);
		} else {
			chan->move_id = chan->local_amp_id;
		}

		FUNC4(chan);
	}

	FUNC5(conn, cmd->ident, icid);

	FUNC2(chan);

	return 0;
}