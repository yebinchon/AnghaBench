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
struct l2cap_chan {scalar_t__ monitor_timeout; int /*<<< orphan*/  monitor_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct l2cap_chan *chan)
{
	FUNC0(chan);
	if (chan->monitor_timeout) {
		FUNC1(chan, &chan->monitor_timer,
				FUNC2(chan->monitor_timeout));
	}
}