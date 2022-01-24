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
struct l2cap_conn_rsp {int /*<<< orphan*/  status; int /*<<< orphan*/  result; int /*<<< orphan*/  dcid; int /*<<< orphan*/  scid; } ;
struct l2cap_conn {int /*<<< orphan*/  chan_lock; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;
struct l2cap_chan {int dcid; int /*<<< orphan*/  conf_state; int /*<<< orphan*/  num_conf_req; int /*<<< orphan*/  ident; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  CONF_CONNECT_PEND ; 
 int /*<<< orphan*/  CONF_REQ_SENT ; 
 int EBADSLT ; 
 int /*<<< orphan*/  ECONNREFUSED ; 
 int EPROTO ; 
 int /*<<< orphan*/  L2CAP_CONF_REQ ; 
#define  L2CAP_CR_PEND 129 
#define  L2CAP_CR_SUCCESS 128 
 struct l2cap_chan* FUNC1 (struct l2cap_conn*,int /*<<< orphan*/ ) ; 
 struct l2cap_chan* FUNC2 (struct l2cap_conn*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC10 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct l2cap_conn *conn,
				    struct l2cap_cmd_hdr *cmd, u16 cmd_len,
				    u8 *data)
{
	struct l2cap_conn_rsp *rsp = (struct l2cap_conn_rsp *) data;
	u16 scid, dcid, result, status;
	struct l2cap_chan *chan;
	u8 req[128];
	int err;

	if (cmd_len < sizeof(*rsp))
		return -EPROTO;

	scid   = FUNC3(rsp->scid);
	dcid   = FUNC3(rsp->dcid);
	result = FUNC3(rsp->result);
	status = FUNC3(rsp->status);

	FUNC0("dcid 0x%4.4x scid 0x%4.4x result 0x%2.2x status 0x%2.2x",
	       dcid, scid, result, status);

	FUNC12(&conn->chan_lock);

	if (scid) {
		chan = FUNC2(conn, scid);
		if (!chan) {
			err = -EBADSLT;
			goto unlock;
		}
	} else {
		chan = FUNC1(conn, cmd->ident);
		if (!chan) {
			err = -EBADSLT;
			goto unlock;
		}
	}

	err = 0;

	FUNC7(chan);

	switch (result) {
	case L2CAP_CR_SUCCESS:
		FUNC11(chan, BT_CONFIG);
		chan->ident = 0;
		chan->dcid = dcid;
		FUNC4(CONF_CONNECT_PEND, &chan->conf_state);

		if (FUNC15(CONF_REQ_SENT, &chan->conf_state))
			break;

		FUNC10(conn, FUNC9(conn), L2CAP_CONF_REQ,
			       FUNC5(chan, req, sizeof(req)), req);
		chan->num_conf_req++;
		break;

	case L2CAP_CR_PEND:
		FUNC14(CONF_CONNECT_PEND, &chan->conf_state);
		break;

	default:
		FUNC6(chan, ECONNREFUSED);
		break;
	}

	FUNC8(chan);

unlock:
	FUNC13(&conn->chan_lock);

	return err;
}