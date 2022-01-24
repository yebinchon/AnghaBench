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
typedef  int /*<<< orphan*/  u16 ;
struct l2cap_le_conn_rsp {void* result; void* credits; void* mps; void* mtu; void* dcid; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int /*<<< orphan*/  ident; int /*<<< orphan*/  rx_credits; int /*<<< orphan*/  mps; int /*<<< orphan*/  imtu; int /*<<< orphan*/  scid; int /*<<< orphan*/  flags; struct l2cap_conn* conn; } ;
typedef  int /*<<< orphan*/  rsp ;

/* Variables and functions */
 int /*<<< orphan*/  BT_DISCONN ; 
 int /*<<< orphan*/  FLAG_DEFER_SETUP ; 
 int /*<<< orphan*/  L2CAP_CR_LE_AUTHORIZATION ; 
 int /*<<< orphan*/  L2CAP_CR_LE_BAD_PSM ; 
 int /*<<< orphan*/  L2CAP_LE_CONN_RSP ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_le_conn_rsp*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct l2cap_chan *chan)
{
	struct l2cap_conn *conn = chan->conn;
	struct l2cap_le_conn_rsp rsp;
	u16 result;

	if (FUNC3(FLAG_DEFER_SETUP, &chan->flags))
		result = L2CAP_CR_LE_AUTHORIZATION;
	else
		result = L2CAP_CR_LE_BAD_PSM;

	FUNC2(chan, BT_DISCONN);

	rsp.dcid    = FUNC0(chan->scid);
	rsp.mtu     = FUNC0(chan->imtu);
	rsp.mps     = FUNC0(chan->mps);
	rsp.credits = FUNC0(chan->rx_credits);
	rsp.result  = FUNC0(result);

	FUNC1(conn, chan->ident, L2CAP_LE_CONN_RSP, sizeof(rsp),
		       &rsp);
}