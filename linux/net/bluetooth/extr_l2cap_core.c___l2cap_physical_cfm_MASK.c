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
struct l2cap_chan {scalar_t__ state; int move_role; int /*<<< orphan*/  remote_amp_id; int /*<<< orphan*/  local_amp_id; } ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ BT_DISCONN ; 
#define  L2CAP_MOVE_ROLE_INITIATOR 129 
#define  L2CAP_MOVE_ROLE_RESPONDER 128 
 int L2CAP_MR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*,int) ; 

void FUNC6(struct l2cap_chan *chan, int result)
{
	u8 local_amp_id = chan->local_amp_id;
	u8 remote_amp_id = chan->remote_amp_id;

	FUNC0("chan %p, result %d, local_amp_id %d, remote_amp_id %d",
	       chan, result, local_amp_id, remote_amp_id);

	if (chan->state == BT_DISCONN || chan->state == BT_CLOSED) {
		FUNC1(chan);
		return;
	}

	if (chan->state != BT_CONNECTED) {
		FUNC2(chan, result, local_amp_id, remote_amp_id);
	} else if (result != L2CAP_MR_SUCCESS) {
		FUNC3(chan, result);
	} else {
		switch (chan->move_role) {
		case L2CAP_MOVE_ROLE_INITIATOR:
			FUNC4(chan, local_amp_id,
					       remote_amp_id);
			break;
		case L2CAP_MOVE_ROLE_RESPONDER:
			FUNC5(chan, result);
			break;
		default:
			FUNC3(chan, result);
			break;
		}
	}
}