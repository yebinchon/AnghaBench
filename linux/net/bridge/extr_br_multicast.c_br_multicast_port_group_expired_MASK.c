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
struct timer_list {int dummy; } ;
struct net_bridge_port_group {int flags; int /*<<< orphan*/  mglist; int /*<<< orphan*/  timer; TYPE_1__* port; } ;
struct net_bridge {int /*<<< orphan*/  multicast_lock; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct net_bridge* br; } ;

/* Variables and functions */
 int MDB_PG_FLAGS_PERMANENT ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,struct net_bridge_port_group*) ; 
 struct net_bridge_port_group* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct net_bridge_port_group* pg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct net_bridge_port_group *pg = FUNC1(pg, t, timer);
	struct net_bridge *br = pg->port->br;

	FUNC4(&br->multicast_lock);
	if (!FUNC3(br->dev) || FUNC6(&pg->timer) ||
	    FUNC2(&pg->mglist) || pg->flags & MDB_PG_FLAGS_PERMANENT)
		goto out;

	FUNC0(br, pg);

out:
	FUNC5(&br->multicast_lock);
}