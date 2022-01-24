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
struct l2cap_chan {scalar_t__ move_role; int /*<<< orphan*/  move_state; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ L2CAP_MOVE_ROLE_NONE ; 
 scalar_t__ L2CAP_MOVE_ROLE_RESPONDER ; 
 int /*<<< orphan*/  L2CAP_MOVE_STABLE ; 
 int /*<<< orphan*/  L2CAP_MR_BAD_ID ; 
 int /*<<< orphan*/  L2CAP_MR_NOT_ALLOWED ; 
 int /*<<< orphan*/  FUNC0 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct l2cap_chan *chan, int result)
{
	if (chan->move_role == L2CAP_MOVE_ROLE_RESPONDER) {
		u8 rsp_result;
		if (result == -EINVAL)
			rsp_result = L2CAP_MR_BAD_ID;
		else
			rsp_result = L2CAP_MR_NOT_ALLOWED;

		FUNC1(chan, rsp_result);
	}

	chan->move_role = L2CAP_MOVE_ROLE_NONE;
	chan->move_state = L2CAP_MOVE_STABLE;

	/* Restart data transmission */
	FUNC0(chan);
}