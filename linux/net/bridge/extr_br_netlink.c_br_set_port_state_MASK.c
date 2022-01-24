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
typedef  scalar_t__ u8 ;
struct net_bridge_port {TYPE_1__* br; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ stp_enabled; } ;

/* Variables and functions */
 scalar_t__ BR_KERNEL_STP ; 
 scalar_t__ BR_STATE_BLOCKING ; 
 scalar_t__ BR_STATE_DISABLED ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_bridge_port *p, u8 state)
{
	if (state > BR_STATE_BLOCKING)
		return -EINVAL;

	/* if kernel STP is running, don't allow changes */
	if (p->br->stp_enabled == BR_KERNEL_STP)
		return -EBUSY;

	/* if device is not up, change is not allowed
	 * if link is not present, only allowable state is disabled
	 */
	if (!FUNC3(p->dev) ||
	    (!FUNC2(p->dev) && state != BR_STATE_DISABLED))
		return -ENETDOWN;

	FUNC1(p, state);
	FUNC0(p->br);
	return 0;
}