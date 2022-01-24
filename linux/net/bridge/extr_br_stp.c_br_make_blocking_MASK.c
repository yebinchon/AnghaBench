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
struct net_bridge_port {scalar_t__ state; int /*<<< orphan*/  forward_delay_timer; int /*<<< orphan*/  br; } ;

/* Variables and functions */
 scalar_t__ BR_STATE_BLOCKING ; 
 scalar_t__ BR_STATE_DISABLED ; 
 scalar_t__ BR_STATE_FORWARDING ; 
 scalar_t__ BR_STATE_LEARNING ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_bridge_port *p)
{
	if (p->state != BR_STATE_DISABLED &&
	    p->state != BR_STATE_BLOCKING) {
		if (p->state == BR_STATE_FORWARDING ||
		    p->state == BR_STATE_LEARNING)
			FUNC2(p->br);

		FUNC1(p, BR_STATE_BLOCKING);
		FUNC0(RTM_NEWLINK, NULL, p);

		FUNC3(&p->forward_delay_timer);
	}
}