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
struct l2cap_cmd_hdr {int code; int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
#define  L2CAP_COMMAND_REJ 144 
#define  L2CAP_CONF_REQ 143 
#define  L2CAP_CONF_RSP 142 
#define  L2CAP_CONN_REQ 141 
#define  L2CAP_CONN_RSP 140 
#define  L2CAP_CREATE_CHAN_REQ 139 
#define  L2CAP_CREATE_CHAN_RSP 138 
#define  L2CAP_DISCONN_REQ 137 
#define  L2CAP_DISCONN_RSP 136 
#define  L2CAP_ECHO_REQ 135 
#define  L2CAP_ECHO_RSP 134 
#define  L2CAP_INFO_REQ 133 
#define  L2CAP_INFO_RSP 132 
#define  L2CAP_MOVE_CHAN_CFM 131 
#define  L2CAP_MOVE_CHAN_CFM_RSP 130 
#define  L2CAP_MOVE_CHAN_REQ 129 
#define  L2CAP_MOVE_CHAN_RSP 128 
 int /*<<< orphan*/  FUNC1 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct l2cap_conn*,struct l2cap_cmd_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct l2cap_conn*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC16(struct l2cap_conn *conn,
				      struct l2cap_cmd_hdr *cmd, u16 cmd_len,
				      u8 *data)
{
	int err = 0;

	switch (cmd->code) {
	case L2CAP_COMMAND_REJ:
		FUNC1(conn, cmd, cmd_len, data);
		break;

	case L2CAP_CONN_REQ:
		err = FUNC5(conn, cmd, cmd_len, data);
		break;

	case L2CAP_CONN_RSP:
	case L2CAP_CREATE_CHAN_RSP:
		FUNC4(conn, cmd, cmd_len, data);
		break;

	case L2CAP_CONF_REQ:
		err = FUNC2(conn, cmd, cmd_len, data);
		break;

	case L2CAP_CONF_RSP:
		FUNC3(conn, cmd, cmd_len, data);
		break;

	case L2CAP_DISCONN_REQ:
		err = FUNC7(conn, cmd, cmd_len, data);
		break;

	case L2CAP_DISCONN_RSP:
		FUNC8(conn, cmd, cmd_len, data);
		break;

	case L2CAP_ECHO_REQ:
		FUNC15(conn, cmd->ident, L2CAP_ECHO_RSP, cmd_len, data);
		break;

	case L2CAP_ECHO_RSP:
		break;

	case L2CAP_INFO_REQ:
		err = FUNC9(conn, cmd, cmd_len, data);
		break;

	case L2CAP_INFO_RSP:
		FUNC10(conn, cmd, cmd_len, data);
		break;

	case L2CAP_CREATE_CHAN_REQ:
		err = FUNC6(conn, cmd, cmd_len, data);
		break;

	case L2CAP_MOVE_CHAN_REQ:
		err = FUNC13(conn, cmd, cmd_len, data);
		break;

	case L2CAP_MOVE_CHAN_RSP:
		FUNC14(conn, cmd, cmd_len, data);
		break;

	case L2CAP_MOVE_CHAN_CFM:
		err = FUNC11(conn, cmd, cmd_len, data);
		break;

	case L2CAP_MOVE_CHAN_CFM_RSP:
		FUNC12(conn, cmd, cmd_len, data);
		break;

	default:
		FUNC0("Unknown BR/EDR signaling command 0x%2.2x", cmd->code);
		err = -EINVAL;
		break;
	}

	return err;
}