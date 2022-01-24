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
struct l2cap_move_chan_rsp {void* result; void* icid; } ;
struct l2cap_chan {int /*<<< orphan*/  ident; int /*<<< orphan*/  conn; int /*<<< orphan*/  dcid; } ;
typedef  int /*<<< orphan*/  rsp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L2CAP_MOVE_CHAN_RSP ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_move_chan_rsp*) ; 

__attribute__((used)) static void FUNC3(struct l2cap_chan *chan, u16 result)
{
	struct l2cap_move_chan_rsp rsp;

	FUNC0("chan %p, result 0x%4.4x", chan, result);

	rsp.icid = FUNC1(chan->dcid);
	rsp.result = FUNC1(result);

	FUNC2(chan->conn, chan->ident, L2CAP_MOVE_CHAN_RSP,
		       sizeof(rsp), &rsp);
}