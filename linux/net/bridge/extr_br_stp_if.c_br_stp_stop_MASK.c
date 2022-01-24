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
struct net_bridge {scalar_t__ stp_enabled; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ BR_NO_STP ; 
 scalar_t__ BR_USER_STP ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*) ; 
 int FUNC2 (struct net_bridge*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_bridge *br)
{
	int err;

	if (br->stp_enabled == BR_USER_STP) {
		err = FUNC2(br, "stop");
		if (err)
			FUNC0(br, "failed to stop userspace STP (%d)\n", err);

		/* To start timers on any ports left in blocking */
		FUNC3(&br->lock);
		FUNC1(br);
		FUNC4(&br->lock);
	}

	br->stp_enabled = BR_NO_STP;
}