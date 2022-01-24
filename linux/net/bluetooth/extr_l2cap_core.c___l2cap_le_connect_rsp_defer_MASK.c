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
struct l2cap_le_conn_rsp {void* result; void* credits; void* mps; void* mtu; void* dcid; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int /*<<< orphan*/  ident; int /*<<< orphan*/  rx_credits; int /*<<< orphan*/  mps; int /*<<< orphan*/  imtu; int /*<<< orphan*/  scid; struct l2cap_conn* conn; } ;
typedef  int /*<<< orphan*/  rsp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*) ; 
 int /*<<< orphan*/  L2CAP_CR_LE_SUCCESS ; 
 int /*<<< orphan*/  L2CAP_LE_CONN_RSP ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_le_conn_rsp*) ; 

void FUNC3(struct l2cap_chan *chan)
{
	struct l2cap_le_conn_rsp rsp;
	struct l2cap_conn *conn = chan->conn;

	FUNC0("chan %p", chan);

	rsp.dcid    = FUNC1(chan->scid);
	rsp.mtu     = FUNC1(chan->imtu);
	rsp.mps     = FUNC1(chan->mps);
	rsp.credits = FUNC1(chan->rx_credits);
	rsp.result  = FUNC1(L2CAP_CR_LE_SUCCESS);

	FUNC2(conn, chan->ident, L2CAP_LE_CONN_RSP, sizeof(rsp),
		       &rsp);
}