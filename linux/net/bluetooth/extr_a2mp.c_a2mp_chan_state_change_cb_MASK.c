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
struct l2cap_chan {int state; struct amp_mgr* data; } ;
struct amp_mgr {int dummy; } ;

/* Variables and functions */
#define  BT_CLOSED 128 
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amp_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct l2cap_chan *chan, int state,
				      int err)
{
	struct amp_mgr *mgr = chan->data;

	if (!mgr)
		return;

	FUNC0("chan %p state %s", chan, FUNC2(state));

	chan->state = state;

	switch (state) {
	case BT_CLOSED:
		if (mgr)
			FUNC1(mgr);
		break;
	}
}