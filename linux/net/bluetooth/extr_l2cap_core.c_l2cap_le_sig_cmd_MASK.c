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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_cmd_hdr {int code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
#define  L2CAP_COMMAND_REJ 135 
#define  L2CAP_CONN_PARAM_UPDATE_REQ 134 
#define  L2CAP_CONN_PARAM_UPDATE_RSP 133 
#define  L2CAP_DISCONN_REQ 132 
#define  L2CAP_DISCONN_RSP 131 
#define  L2CAP_LE_CONN_REQ 130 
#define  L2CAP_LE_CONN_RSP 129 
#define  L2CAP_LE_CREDITS 128 
 int FUNC1 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC8(struct l2cap_conn *conn,
				   struct l2cap_cmd_hdr *cmd, u16 cmd_len,
				   u8 *data)
{
	int err = 0;

	switch (cmd->code) {
	case L2CAP_COMMAND_REJ:
		FUNC4(conn, cmd, cmd_len, data);
		break;

	case L2CAP_CONN_PARAM_UPDATE_REQ:
		err = FUNC1(conn, cmd, cmd_len, data);
		break;

	case L2CAP_CONN_PARAM_UPDATE_RSP:
		break;

	case L2CAP_LE_CONN_RSP:
		FUNC6(conn, cmd, cmd_len, data);
		break;

	case L2CAP_LE_CONN_REQ:
		err = FUNC5(conn, cmd, cmd_len, data);
		break;

	case L2CAP_LE_CREDITS:
		err = FUNC7(conn, cmd, cmd_len, data);
		break;

	case L2CAP_DISCONN_REQ:
		err = FUNC2(conn, cmd, cmd_len, data);
		break;

	case L2CAP_DISCONN_RSP:
		FUNC3(conn, cmd, cmd_len, data);
		break;

	default:
		FUNC0("Unknown LE signaling command 0x%2.2x", cmd->code);
		err = -EINVAL;
		break;
	}

	return err;
}