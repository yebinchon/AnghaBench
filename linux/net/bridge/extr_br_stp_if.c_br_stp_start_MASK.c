#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_bridge {scalar_t__ bridge_forward_delay; int /*<<< orphan*/  lock; scalar_t__ hello_time; int /*<<< orphan*/  hello_timer; TYPE_1__* dev; int /*<<< orphan*/  stp_enabled; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_KERNEL_STP ; 
 scalar_t__ BR_MAX_FORWARD_DELAY ; 
 scalar_t__ BR_MIN_FORWARD_DELAY ; 
 int /*<<< orphan*/  BR_USER_STP ; 
 int ENOENT ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*) ; 
 int FUNC4 (struct net_bridge*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  init_net ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct net_bridge *br)
{
	int err = -ENOENT;

	if (FUNC7(FUNC5(br->dev), &init_net))
		err = FUNC4(br, "start");

	if (err && err != -ENOENT)
		FUNC2(br, "failed to start userspace STP (%d)\n", err);

	FUNC8(&br->lock);

	if (br->bridge_forward_delay < BR_MIN_FORWARD_DELAY)
		FUNC0(br, BR_MIN_FORWARD_DELAY);
	else if (br->bridge_forward_delay > BR_MAX_FORWARD_DELAY)
		FUNC0(br, BR_MAX_FORWARD_DELAY);

	if (!err) {
		br->stp_enabled = BR_USER_STP;
		FUNC1(br, "userspace STP started\n");
	} else {
		br->stp_enabled = BR_KERNEL_STP;
		FUNC1(br, "using kernel STP\n");

		/* To start timers on any ports left in blocking */
		if (br->dev->flags & IFF_UP)
			FUNC6(&br->hello_timer, jiffies + br->hello_time);
		FUNC3(br);
	}

	FUNC9(&br->lock);
}