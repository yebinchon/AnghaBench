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
struct net_bridge {unsigned long multicast_router; int /*<<< orphan*/  multicast_lock; int /*<<< orphan*/  multicast_router_timer; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MDB_RTR_TYPE_DISABLED 130 
#define  MDB_RTR_TYPE_PERM 129 
#define  MDB_RTR_TYPE_TEMP_QUERY 128 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct net_bridge *br, unsigned long val)
{
	int err = -EINVAL;

	FUNC2(&br->multicast_lock);

	switch (val) {
	case MDB_RTR_TYPE_DISABLED:
	case MDB_RTR_TYPE_PERM:
		FUNC0(br, val == MDB_RTR_TYPE_PERM);
		FUNC1(&br->multicast_router_timer);
		br->multicast_router = val;
		err = 0;
		break;
	case MDB_RTR_TYPE_TEMP_QUERY:
		if (br->multicast_router != MDB_RTR_TYPE_TEMP_QUERY)
			FUNC0(br, false);
		br->multicast_router = val;
		err = 0;
		break;
	}

	FUNC3(&br->multicast_lock);

	return err;
}