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
struct l2cap_chan {scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2CAP_EV_LOCAL_BUSY_CLEAR ; 
 int /*<<< orphan*/  L2CAP_EV_LOCAL_BUSY_DETECTED ; 
 scalar_t__ L2CAP_MODE_ERTM ; 
 int /*<<< orphan*/  FUNC0 (struct l2cap_chan*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(struct l2cap_chan *chan, int busy)
{
	u8 event;

	if (chan->mode != L2CAP_MODE_ERTM)
		return;

	event = busy ? L2CAP_EV_LOCAL_BUSY_DETECTED : L2CAP_EV_LOCAL_BUSY_CLEAR;
	FUNC0(chan, NULL, NULL, event);
}