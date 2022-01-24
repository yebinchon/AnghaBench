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
struct net_bridge_port {unsigned long multicast_router; int /*<<< orphan*/  multicast_router_timer; struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  multicast_lock; scalar_t__ multicast_querier_interval; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MDB_RTR_TYPE_DISABLED 131 
#define  MDB_RTR_TYPE_PERM 130 
#define  MDB_RTR_TYPE_TEMP 129 
#define  MDB_RTR_TYPE_TEMP_QUERY 128 
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct net_bridge_port *p, unsigned long val)
{
	struct net_bridge *br = p->br;
	unsigned long now = jiffies;
	int err = -EINVAL;

	FUNC5(&br->multicast_lock);
	if (p->multicast_router == val) {
		/* Refresh the temp router port timer */
		if (p->multicast_router == MDB_RTR_TYPE_TEMP)
			FUNC4(&p->multicast_router_timer,
				  now + br->multicast_querier_interval);
		err = 0;
		goto unlock;
	}
	switch (val) {
	case MDB_RTR_TYPE_DISABLED:
		p->multicast_router = MDB_RTR_TYPE_DISABLED;
		FUNC0(p);
		FUNC3(&p->multicast_router_timer);
		break;
	case MDB_RTR_TYPE_TEMP_QUERY:
		p->multicast_router = MDB_RTR_TYPE_TEMP_QUERY;
		FUNC0(p);
		break;
	case MDB_RTR_TYPE_PERM:
		p->multicast_router = MDB_RTR_TYPE_PERM;
		FUNC3(&p->multicast_router_timer);
		FUNC1(br, p);
		break;
	case MDB_RTR_TYPE_TEMP:
		p->multicast_router = MDB_RTR_TYPE_TEMP;
		FUNC2(br, p);
		break;
	default:
		goto unlock;
	}
	err = 0;
unlock:
	FUNC6(&br->multicast_lock);

	return err;
}