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
struct l2cap_info_rsp {int* data; void* result; void* type; } ;
typedef  struct l2cap_info_rsp u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct l2cap_info_req {int /*<<< orphan*/  type; } ;
struct l2cap_conn {int local_fixed_chan; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;
typedef  int /*<<< orphan*/  rsp ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EPROTO ; 
 int L2CAP_FC_A2MP ; 
 int L2CAP_FEAT_ERTM ; 
 int L2CAP_FEAT_EXT_FLOW ; 
 int L2CAP_FEAT_EXT_WINDOW ; 
 int L2CAP_FEAT_FCS ; 
 int L2CAP_FEAT_STREAMING ; 
 int /*<<< orphan*/  L2CAP_INFO_RSP ; 
 int L2CAP_IR_NOTSUPP ; 
 int L2CAP_IR_SUCCESS ; 
 int L2CAP_IT_FEAT_MASK ; 
 int L2CAP_IT_FIXED_CHAN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  disable_ertm ; 
 int l2cap_feat_mask ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_info_rsp*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int*) ; 

__attribute__((used)) static inline int FUNC6(struct l2cap_conn *conn,
					struct l2cap_cmd_hdr *cmd, u16 cmd_len,
					u8 *data)
{
	struct l2cap_info_req *req = (struct l2cap_info_req *) data;
	u16 type;

	if (cmd_len != sizeof(*req))
		return -EPROTO;

	type = FUNC1(req->type);

	FUNC0("type 0x%4.4x", type);

	if (type == L2CAP_IT_FEAT_MASK) {
		u8 buf[8];
		u32 feat_mask = l2cap_feat_mask;
		struct l2cap_info_rsp *rsp = (struct l2cap_info_rsp *) buf;
		rsp->type   = FUNC2(L2CAP_IT_FEAT_MASK);
		rsp->result = FUNC2(L2CAP_IR_SUCCESS);
		if (!disable_ertm)
			feat_mask |= L2CAP_FEAT_ERTM | L2CAP_FEAT_STREAMING
				| L2CAP_FEAT_FCS;
		if (conn->local_fixed_chan & L2CAP_FC_A2MP)
			feat_mask |= L2CAP_FEAT_EXT_FLOW
				| L2CAP_FEAT_EXT_WINDOW;

		FUNC5(feat_mask, rsp->data);
		FUNC3(conn, cmd->ident, L2CAP_INFO_RSP, sizeof(buf),
			       buf);
	} else if (type == L2CAP_IT_FIXED_CHAN) {
		u8 buf[12];
		struct l2cap_info_rsp *rsp = (struct l2cap_info_rsp *) buf;

		rsp->type   = FUNC2(L2CAP_IT_FIXED_CHAN);
		rsp->result = FUNC2(L2CAP_IR_SUCCESS);
		rsp->data[0] = conn->local_fixed_chan;
		FUNC4(rsp->data + 1, 0, 7);
		FUNC3(conn, cmd->ident, L2CAP_INFO_RSP, sizeof(buf),
			       buf);
	} else {
		struct l2cap_info_rsp rsp;
		rsp.type   = FUNC2(type);
		rsp.result = FUNC2(L2CAP_IR_NOTSUPP);
		FUNC3(conn, cmd->ident, L2CAP_INFO_RSP, sizeof(rsp),
			       &rsp);
	}

	return 0;
}