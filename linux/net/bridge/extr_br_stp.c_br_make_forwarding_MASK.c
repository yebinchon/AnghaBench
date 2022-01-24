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
struct net_bridge_port {scalar_t__ state; int /*<<< orphan*/  forward_delay_timer; struct net_bridge* br; } ;
struct net_bridge {scalar_t__ stp_enabled; scalar_t__ forward_delay; } ;

/* Variables and functions */
 scalar_t__ BR_KERNEL_STP ; 
 scalar_t__ BR_NO_STP ; 
 scalar_t__ BR_STATE_BLOCKING ; 
 int /*<<< orphan*/  BR_STATE_FORWARDING ; 
 int /*<<< orphan*/  BR_STATE_LEARNING ; 
 int /*<<< orphan*/  BR_STATE_LISTENING ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct net_bridge_port *p)
{
	struct net_bridge *br = p->br;

	if (p->state != BR_STATE_BLOCKING)
		return;

	if (br->stp_enabled == BR_NO_STP || br->forward_delay == 0) {
		FUNC1(p, BR_STATE_FORWARDING);
		FUNC2(br);
		FUNC3(&p->forward_delay_timer);
	} else if (br->stp_enabled == BR_KERNEL_STP)
		FUNC1(p, BR_STATE_LISTENING);
	else
		FUNC1(p, BR_STATE_LEARNING);

	FUNC0(RTM_NEWLINK, NULL, p);

	if (br->forward_delay != 0)
		FUNC4(&p->forward_delay_timer, jiffies + br->forward_delay);
}