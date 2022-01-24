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
struct l2cap_conn {int dummy; } ;
struct l2cap_conf_req {int /*<<< orphan*/  data; int /*<<< orphan*/  flags; int /*<<< orphan*/  dcid; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;
struct l2cap_chan {scalar_t__ state; int scid; int conf_len; scalar_t__ mode; int /*<<< orphan*/  ident; int /*<<< orphan*/  hs_hcon; int /*<<< orphan*/  conf_state; int /*<<< orphan*/  num_conf_req; int /*<<< orphan*/  num_conf_rsp; scalar_t__ conf_req; int /*<<< orphan*/  dcid; } ;
typedef  int /*<<< orphan*/  rsp ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECT2 ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  CONF_INPUT_DONE ; 
 int /*<<< orphan*/  CONF_LOC_CONF_PEND ; 
 int /*<<< orphan*/  CONF_OUTPUT_DONE ; 
 int /*<<< orphan*/  CONF_REM_CONF_PEND ; 
 int /*<<< orphan*/  CONF_REQ_SENT ; 
 int ECONNRESET ; 
 int EPROTO ; 
 int L2CAP_CONF_FLAG_CONTINUATION ; 
 int /*<<< orphan*/  L2CAP_CONF_REJECT ; 
 int /*<<< orphan*/  L2CAP_CONF_REQ ; 
 int /*<<< orphan*/  L2CAP_CONF_RSP ; 
 int /*<<< orphan*/  L2CAP_CONF_SUCCESS ; 
 scalar_t__ L2CAP_MODE_ERTM ; 
 scalar_t__ L2CAP_MODE_STREAMING ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_conn*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct l2cap_chan*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct l2cap_chan*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*) ; 
 int FUNC7 (struct l2cap_chan*) ; 
 struct l2cap_chan* FUNC8 (struct l2cap_conn*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_conn*) ; 
 int FUNC10 (struct l2cap_chan*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct l2cap_chan*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct l2cap_chan*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC18(struct l2cap_conn *conn,
				   struct l2cap_cmd_hdr *cmd, u16 cmd_len,
				   u8 *data)
{
	struct l2cap_conf_req *req = (struct l2cap_conf_req *) data;
	u16 dcid, flags;
	u8 rsp[64];
	struct l2cap_chan *chan;
	int len, err = 0;

	if (cmd_len < sizeof(*req))
		return -EPROTO;

	dcid  = FUNC1(req->dcid);
	flags = FUNC1(req->flags);

	FUNC0("dcid 0x%4.4x flags 0x%2.2x", dcid, flags);

	chan = FUNC8(conn, dcid);
	if (!chan) {
		FUNC2(conn, cmd->ident, dcid, 0);
		return 0;
	}

	if (chan->state != BT_CONFIG && chan->state != BT_CONNECT2) {
		FUNC2(conn, cmd->ident, chan->scid,
				       chan->dcid);
		goto unlock;
	}

	/* Reject if config buffer is too small. */
	len = cmd_len - sizeof(*req);
	if (chan->conf_len + len > sizeof(chan->conf_req)) {
		FUNC11(conn, cmd->ident, L2CAP_CONF_RSP,
			       FUNC4(chan, rsp,
			       L2CAP_CONF_REJECT, flags), rsp);
		goto unlock;
	}

	/* Store config. */
	FUNC14(chan->conf_req + chan->conf_len, req->data, len);
	chan->conf_len += len;

	if (flags & L2CAP_CONF_FLAG_CONTINUATION) {
		/* Incomplete config. Send empty response. */
		FUNC11(conn, cmd->ident, L2CAP_CONF_RSP,
			       FUNC4(chan, rsp,
			       L2CAP_CONF_SUCCESS, flags), rsp);
		goto unlock;
	}

	/* Complete config. */
	len = FUNC10(chan, rsp, sizeof(rsp));
	if (len < 0) {
		FUNC12(chan, ECONNRESET);
		goto unlock;
	}

	chan->ident = cmd->ident;
	FUNC11(conn, cmd->ident, L2CAP_CONF_RSP, len, rsp);
	chan->num_conf_rsp++;

	/* Reset config buffer. */
	chan->conf_len = 0;

	if (!FUNC17(CONF_OUTPUT_DONE, &chan->conf_state))
		goto unlock;

	if (FUNC17(CONF_INPUT_DONE, &chan->conf_state)) {
		FUNC15(chan);

		if (chan->mode == L2CAP_MODE_ERTM ||
		    chan->mode == L2CAP_MODE_STREAMING)
			err = FUNC7(chan);

		if (err < 0)
			FUNC12(chan, -err);
		else
			FUNC5(chan);

		goto unlock;
	}

	if (!FUNC16(CONF_REQ_SENT, &chan->conf_state)) {
		u8 buf[64];
		FUNC11(conn, FUNC9(conn), L2CAP_CONF_REQ,
			       FUNC3(chan, buf, sizeof(buf)), buf);
		chan->num_conf_req++;
	}

	/* Got Conf Rsp PENDING from remote side and assume we sent
	   Conf Rsp PENDING in the code above */
	if (FUNC17(CONF_REM_CONF_PEND, &chan->conf_state) &&
	    FUNC17(CONF_LOC_CONF_PEND, &chan->conf_state)) {

		/* check compatibility */

		/* Send rsp for BR/EDR channel */
		if (!chan->hs_hcon)
			FUNC13(chan, rsp, cmd->ident, flags);
		else
			chan->ident = cmd->ident;
	}

unlock:
	FUNC6(chan);
	return err;
}