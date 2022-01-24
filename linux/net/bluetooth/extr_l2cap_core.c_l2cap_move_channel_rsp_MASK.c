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
struct l2cap_move_chan_rsp {int /*<<< orphan*/  result; int /*<<< orphan*/  icid; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int EPROTO ; 
 int L2CAP_MR_PEND ; 
 int L2CAP_MR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_conn*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_conn*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct l2cap_conn *conn,
				  struct l2cap_cmd_hdr *cmd,
				  u16 cmd_len, void *data)
{
	struct l2cap_move_chan_rsp *rsp = data;
	u16 icid, result;

	if (cmd_len != sizeof(*rsp))
		return -EPROTO;

	icid = FUNC3(rsp->icid);
	result = FUNC3(rsp->result);

	FUNC0("icid 0x%4.4x, result 0x%4.4x", icid, result);

	if (result == L2CAP_MR_SUCCESS || result == L2CAP_MR_PEND)
		FUNC1(conn, icid, result);
	else
		FUNC2(conn, cmd->ident, icid, result);

	return 0;
}