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
struct l2cap_info_rsp {int /*<<< orphan*/ * data; int /*<<< orphan*/  result; int /*<<< orphan*/  type; } ;
struct l2cap_info_req {int /*<<< orphan*/  type; } ;
struct l2cap_conn {scalar_t__ info_ident; int info_state; int feat_mask; int /*<<< orphan*/  remote_fixed_chan; int /*<<< orphan*/  info_timer; } ;
struct l2cap_cmd_hdr {scalar_t__ ident; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int EPROTO ; 
 int L2CAP_FEAT_FIXED_CHAN ; 
 int L2CAP_INFO_FEAT_MASK_REQ_DONE ; 
 int /*<<< orphan*/  L2CAP_INFO_REQ ; 
 int L2CAP_IR_SUCCESS ; 
#define  L2CAP_IT_FEAT_MASK 129 
#define  L2CAP_IT_FIXED_CHAN 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_conn*) ; 
 scalar_t__ FUNC6 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_conn*,scalar_t__,int /*<<< orphan*/ ,int,struct l2cap_info_req*) ; 

__attribute__((used)) static inline int FUNC8(struct l2cap_conn *conn,
					struct l2cap_cmd_hdr *cmd, u16 cmd_len,
					u8 *data)
{
	struct l2cap_info_rsp *rsp = (struct l2cap_info_rsp *) data;
	u16 type, result;

	if (cmd_len < sizeof(*rsp))
		return -EPROTO;

	type   = FUNC1(rsp->type);
	result = FUNC1(rsp->result);

	FUNC0("type 0x%4.4x result 0x%2.2x", type, result);

	/* L2CAP Info req/rsp are unbound to channels, add extra checks */
	if (cmd->ident != conn->info_ident ||
	    conn->info_state & L2CAP_INFO_FEAT_MASK_REQ_DONE)
		return 0;

	FUNC2(&conn->info_timer);

	if (result != L2CAP_IR_SUCCESS) {
		conn->info_state |= L2CAP_INFO_FEAT_MASK_REQ_DONE;
		conn->info_ident = 0;

		FUNC5(conn);

		return 0;
	}

	switch (type) {
	case L2CAP_IT_FEAT_MASK:
		conn->feat_mask = FUNC4(rsp->data);

		if (conn->feat_mask & L2CAP_FEAT_FIXED_CHAN) {
			struct l2cap_info_req req;
			req.type = FUNC3(L2CAP_IT_FIXED_CHAN);

			conn->info_ident = FUNC6(conn);

			FUNC7(conn, conn->info_ident,
				       L2CAP_INFO_REQ, sizeof(req), &req);
		} else {
			conn->info_state |= L2CAP_INFO_FEAT_MASK_REQ_DONE;
			conn->info_ident = 0;

			FUNC5(conn);
		}
		break;

	case L2CAP_IT_FIXED_CHAN:
		conn->remote_fixed_chan = rsp->data[0];
		conn->info_state |= L2CAP_INFO_FEAT_MASK_REQ_DONE;
		conn->info_ident = 0;

		FUNC5(conn);
		break;
	}

	return 0;
}