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
typedef  scalar_t__ u16 ;
struct l2cap_le_credits {void* credits; void* cid; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int imtu; int mps; int /*<<< orphan*/  ident; scalar_t__ scid; scalar_t__ rx_credits; struct l2cap_conn* conn; } ;
typedef  int /*<<< orphan*/  pkt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,scalar_t__) ; 
 int /*<<< orphan*/  L2CAP_LE_CREDITS ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_le_credits*) ; 

__attribute__((used)) static void FUNC4(struct l2cap_chan *chan)
{
	struct l2cap_conn *conn = chan->conn;
	struct l2cap_le_credits pkt;
	u16 return_credits;

	return_credits = ((chan->imtu / chan->mps) + 1) - chan->rx_credits;

	if (!return_credits)
		return;

	FUNC0("chan %p returning %u credits to sender", chan, return_credits);

	chan->rx_credits += return_credits;

	pkt.cid     = FUNC1(chan->scid);
	pkt.credits = FUNC1(return_credits);

	chan->ident = FUNC2(conn);

	FUNC3(conn, chan->ident, L2CAP_LE_CREDITS, sizeof(pkt), &pkt);
}