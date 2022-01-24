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
typedef  int u16 ;
struct l2cap_conn_param_update_rsp {void* result; } ;
struct l2cap_conn_param_update_req {int /*<<< orphan*/  to_multiplier; int /*<<< orphan*/  latency; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;
struct hci_conn {scalar_t__ role; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  dst; int /*<<< orphan*/  hdev; } ;
typedef  int /*<<< orphan*/  rsp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int EINVAL ; 
 int EPROTO ; 
 scalar_t__ HCI_ROLE_MASTER ; 
 int /*<<< orphan*/  L2CAP_CONN_PARAM_ACCEPTED ; 
 int /*<<< orphan*/  L2CAP_CONN_PARAM_REJECTED ; 
 int /*<<< orphan*/  L2CAP_CONN_PARAM_UPDATE_RSP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_conn_param_update_rsp*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_conn_param_update_rsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static inline int FUNC8(struct l2cap_conn *conn,
					      struct l2cap_cmd_hdr *cmd,
					      u16 cmd_len, u8 *data)
{
	struct hci_conn *hcon = conn->hcon;
	struct l2cap_conn_param_update_req *req;
	struct l2cap_conn_param_update_rsp rsp;
	u16 min, max, latency, to_multiplier;
	int err;

	if (hcon->role != HCI_ROLE_MASTER)
		return -EINVAL;

	if (cmd_len != sizeof(struct l2cap_conn_param_update_req))
		return -EPROTO;

	req = (struct l2cap_conn_param_update_req *) data;
	min		= FUNC1(req->min);
	max		= FUNC1(req->max);
	latency		= FUNC1(req->latency);
	to_multiplier	= FUNC1(req->to_multiplier);

	FUNC0("min 0x%4.4x max 0x%4.4x latency: 0x%4.4x Timeout: 0x%4.4x",
	       min, max, latency, to_multiplier);

	FUNC6(&rsp, 0, sizeof(rsp));

	err = FUNC3(min, max, latency, to_multiplier);
	if (err)
		rsp.result = FUNC2(L2CAP_CONN_PARAM_REJECTED);
	else
		rsp.result = FUNC2(L2CAP_CONN_PARAM_ACCEPTED);

	FUNC5(conn, cmd->ident, L2CAP_CONN_PARAM_UPDATE_RSP,
		       sizeof(rsp), &rsp);

	if (!err) {
		u8 store_hint;

		store_hint = FUNC4(hcon, min, max, latency,
						to_multiplier);
		FUNC7(hcon->hdev, &hcon->dst, hcon->dst_type,
				    store_hint, min, max, latency,
				    to_multiplier);

	}

	return 0;
}