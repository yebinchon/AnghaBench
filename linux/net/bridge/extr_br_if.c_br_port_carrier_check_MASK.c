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
struct net_device {int dummy; } ;
struct net_bridge_port {int flags; scalar_t__ state; int /*<<< orphan*/  path_cost; struct net_bridge* br; struct net_device* dev; } ;
struct net_bridge {int /*<<< orphan*/  lock; struct net_device* dev; } ;

/* Variables and functions */
 int BR_ADMIN_COST ; 
 scalar_t__ BR_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_port*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct net_bridge_port *p, bool *notified)
{
	struct net_device *dev = p->dev;
	struct net_bridge *br = p->br;

	if (!(p->flags & BR_ADMIN_COST) &&
	    FUNC3(dev) && FUNC2(dev))
		p->path_cost = FUNC4(dev);

	*notified = false;
	if (!FUNC3(br->dev))
		return;

	FUNC5(&br->lock);
	if (FUNC3(dev) && FUNC2(dev)) {
		if (p->state == BR_STATE_DISABLED) {
			FUNC1(p);
			*notified = true;
		}
	} else {
		if (p->state != BR_STATE_DISABLED) {
			FUNC0(p);
			*notified = true;
		}
	}
	FUNC6(&br->lock);
}