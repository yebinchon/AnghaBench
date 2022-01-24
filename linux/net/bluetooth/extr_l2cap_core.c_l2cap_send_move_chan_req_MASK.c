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
typedef  void* u8 ;
struct l2cap_move_chan_req {void* dest_amp_id; int /*<<< orphan*/  icid; } ;
struct l2cap_chan {int /*<<< orphan*/  conn; int /*<<< orphan*/  scid; void* ident; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,void*) ; 
 int /*<<< orphan*/  L2CAP_MOVE_CHAN_REQ ; 
 int /*<<< orphan*/  L2CAP_MOVE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int,struct l2cap_move_chan_req*) ; 

__attribute__((used)) static void FUNC5(struct l2cap_chan *chan, u8 dest_amp_id)
{
	struct l2cap_move_chan_req req;
	u8 ident;

	FUNC0("chan %p, dest_amp_id %d", chan, dest_amp_id);

	ident = FUNC3(chan->conn);
	chan->ident = ident;

	req.icid = FUNC2(chan->scid);
	req.dest_amp_id = dest_amp_id;

	FUNC4(chan->conn, ident, L2CAP_MOVE_CHAN_REQ, sizeof(req),
		       &req);

	FUNC1(chan, L2CAP_MOVE_TIMEOUT);
}