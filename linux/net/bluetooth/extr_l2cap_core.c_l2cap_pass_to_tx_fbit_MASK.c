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
struct l2cap_ctrl {int dummy; } ;
struct l2cap_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  L2CAP_EV_RECV_FBIT ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,struct l2cap_ctrl*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct l2cap_chan *chan,
				  struct l2cap_ctrl *control)
{
	FUNC0("chan %p, control %p", chan, control);
	FUNC1(chan, control, NULL, L2CAP_EV_RECV_FBIT);
}