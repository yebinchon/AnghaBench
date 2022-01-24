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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct l2cap_disconn_rsp {void* scid; void* dcid; } ;
struct l2cap_disconn_req {int /*<<< orphan*/  dcid; int /*<<< orphan*/  scid; } ;
struct l2cap_conn {int /*<<< orphan*/  chan_lock; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;
struct l2cap_chan {TYPE_1__* ops; int /*<<< orphan*/  dcid; int /*<<< orphan*/  scid; } ;
typedef  int /*<<< orphan*/  rsp ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct l2cap_chan*) ;int /*<<< orphan*/  (* set_shutdown ) (struct l2cap_chan*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int EPROTO ; 
 int /*<<< orphan*/  L2CAP_DISCONN_RSP ; 
 struct l2cap_chan* FUNC1 (struct l2cap_conn*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_conn*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC10 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_disconn_rsp*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC14 (struct l2cap_chan*) ; 

__attribute__((used)) static inline int FUNC15(struct l2cap_conn *conn,
				       struct l2cap_cmd_hdr *cmd, u16 cmd_len,
				       u8 *data)
{
	struct l2cap_disconn_req *req = (struct l2cap_disconn_req *) data;
	struct l2cap_disconn_rsp rsp;
	u16 dcid, scid;
	struct l2cap_chan *chan;

	if (cmd_len != sizeof(*req))
		return -EPROTO;

	scid = FUNC2(req->scid);
	dcid = FUNC2(req->dcid);

	FUNC0("scid 0x%4.4x dcid 0x%4.4x", scid, dcid);

	FUNC11(&conn->chan_lock);

	chan = FUNC1(conn, dcid);
	if (!chan) {
		FUNC12(&conn->chan_lock);
		FUNC3(conn, cmd->ident, dcid, scid);
		return 0;
	}

	FUNC7(chan);

	rsp.dcid = FUNC4(chan->scid);
	rsp.scid = FUNC4(chan->dcid);
	FUNC10(conn, cmd->ident, L2CAP_DISCONN_RSP, sizeof(rsp), &rsp);

	chan->ops->set_shutdown(chan);

	FUNC6(chan);
	FUNC5(chan, ECONNRESET);

	FUNC9(chan);

	chan->ops->close(chan);
	FUNC8(chan);

	FUNC12(&conn->chan_lock);

	return 0;
}