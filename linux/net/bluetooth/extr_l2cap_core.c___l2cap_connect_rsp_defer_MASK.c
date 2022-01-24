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
struct l2cap_conn_rsp {void* status; void* result; void* dcid; void* scid; } ;
typedef  struct l2cap_conn_rsp u8 ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int /*<<< orphan*/  num_conf_req; int /*<<< orphan*/  conf_state; int /*<<< orphan*/  ident; scalar_t__ hs_hcon; int /*<<< orphan*/  scid; int /*<<< orphan*/  dcid; struct l2cap_conn* conn; } ;
typedef  int /*<<< orphan*/  rsp ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,struct l2cap_conn_rsp) ; 
 int /*<<< orphan*/  CONF_REQ_SENT ; 
 struct l2cap_conn_rsp L2CAP_CONF_REQ ; 
 struct l2cap_conn_rsp L2CAP_CONN_RSP ; 
 struct l2cap_conn_rsp L2CAP_CREATE_CHAN_RSP ; 
 int /*<<< orphan*/  L2CAP_CR_SUCCESS ; 
 int /*<<< orphan*/  L2CAP_CS_NO_INFO ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct l2cap_chan*,struct l2cap_conn_rsp*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_conn*,int /*<<< orphan*/ ,struct l2cap_conn_rsp,int,struct l2cap_conn_rsp*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct l2cap_chan *chan)
{
	struct l2cap_conn_rsp rsp;
	struct l2cap_conn *conn = chan->conn;
	u8 buf[128];
	u8 rsp_code;

	rsp.scid   = FUNC1(chan->dcid);
	rsp.dcid   = FUNC1(chan->scid);
	rsp.result = FUNC1(L2CAP_CR_SUCCESS);
	rsp.status = FUNC1(L2CAP_CS_NO_INFO);

	if (chan->hs_hcon)
		rsp_code = L2CAP_CREATE_CHAN_RSP;
	else
		rsp_code = L2CAP_CONN_RSP;

	FUNC0("chan %p rsp_code %u", chan, rsp_code);

	FUNC4(conn, chan->ident, rsp_code, sizeof(rsp), &rsp);

	if (FUNC5(CONF_REQ_SENT, &chan->conf_state))
		return;

	FUNC4(conn, FUNC3(conn), L2CAP_CONF_REQ,
		       FUNC2(chan, buf, sizeof(buf)), buf);
	chan->num_conf_req++;
}