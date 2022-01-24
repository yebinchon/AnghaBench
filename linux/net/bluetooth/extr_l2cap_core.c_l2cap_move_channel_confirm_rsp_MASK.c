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
struct l2cap_move_chan_cfm_rsp {int /*<<< orphan*/  icid; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_cmd_hdr {int dummy; } ;
struct l2cap_chan {scalar_t__ move_state; scalar_t__ local_amp_id; scalar_t__ move_id; scalar_t__ hs_hchan; } ;

/* Variables and functions */
 scalar_t__ AMP_ID_BREDR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EPROTO ; 
 scalar_t__ L2CAP_MOVE_WAIT_CONFIRM_RSP ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*) ; 
 struct l2cap_chan* FUNC4 (struct l2cap_conn*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC7(struct l2cap_conn *conn,
						 struct l2cap_cmd_hdr *cmd,
						 u16 cmd_len, void *data)
{
	struct l2cap_move_chan_cfm_rsp *rsp = data;
	struct l2cap_chan *chan;
	u16 icid;

	if (cmd_len != sizeof(*rsp))
		return -EPROTO;

	icid = FUNC6(rsp->icid);

	FUNC0("icid 0x%4.4x", icid);

	chan = FUNC4(conn, icid);
	if (!chan)
		return 0;

	FUNC1(chan);

	if (chan->move_state == L2CAP_MOVE_WAIT_CONFIRM_RSP) {
		chan->local_amp_id = chan->move_id;

		if (chan->local_amp_id == AMP_ID_BREDR && chan->hs_hchan)
			FUNC2(chan);

		FUNC5(chan);
	}

	FUNC3(chan);

	return 0;
}