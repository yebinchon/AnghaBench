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
struct timer_list {int dummy; } ;
struct net_bridge {scalar_t__ multicast_router; int /*<<< orphan*/  multicast_lock; int /*<<< orphan*/  multicast_router_timer; } ;

/* Variables and functions */
 scalar_t__ MDB_RTR_TYPE_DISABLED ; 
 scalar_t__ MDB_RTR_TYPE_PERM ; 
 struct net_bridge* br ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,int) ; 
 struct net_bridge* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  multicast_router_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct net_bridge *br = FUNC1(br, t, multicast_router_timer);

	FUNC2(&br->multicast_lock);
	if (br->multicast_router == MDB_RTR_TYPE_DISABLED ||
	    br->multicast_router == MDB_RTR_TYPE_PERM ||
	    FUNC4(&br->multicast_router_timer))
		goto out;

	FUNC0(br, false);
out:
	FUNC3(&br->multicast_lock);
}