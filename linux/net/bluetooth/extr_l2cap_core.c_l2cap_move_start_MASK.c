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
struct l2cap_chan {scalar_t__ local_amp_id; scalar_t__ chan_policy; scalar_t__ move_id; int /*<<< orphan*/  move_state; void* move_role; } ;

/* Variables and functions */
 scalar_t__ AMP_ID_BREDR ; 
 scalar_t__ BT_CHANNEL_POLICY_AMP_PREFERRED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*) ; 
 void* L2CAP_MOVE_ROLE_INITIATOR ; 
 int /*<<< orphan*/  L2CAP_MOVE_WAIT_PREPARE ; 
 int /*<<< orphan*/  L2CAP_MOVE_WAIT_RSP_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 

void FUNC3(struct l2cap_chan *chan)
{
	FUNC0("chan %p", chan);

	if (chan->local_amp_id == AMP_ID_BREDR) {
		if (chan->chan_policy != BT_CHANNEL_POLICY_AMP_PREFERRED)
			return;
		chan->move_role = L2CAP_MOVE_ROLE_INITIATOR;
		chan->move_state = L2CAP_MOVE_WAIT_PREPARE;
		/* Placeholder - start physical link setup */
	} else {
		chan->move_role = L2CAP_MOVE_ROLE_INITIATOR;
		chan->move_state = L2CAP_MOVE_WAIT_RSP_SUCCESS;
		chan->move_id = 0;
		FUNC1(chan);
		FUNC2(chan, 0);
	}
}