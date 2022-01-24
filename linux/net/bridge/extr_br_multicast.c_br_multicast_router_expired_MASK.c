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
struct net_bridge_port {scalar_t__ multicast_router; int /*<<< orphan*/  multicast_router_timer; struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  multicast_lock; } ;

/* Variables and functions */
 scalar_t__ MDB_RTR_TYPE_DISABLED ; 
 scalar_t__ MDB_RTR_TYPE_PERM ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port*) ; 
 struct net_bridge_port* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  multicast_router_timer ; 
 struct net_bridge_port* port ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct net_bridge_port *port =
			FUNC1(port, t, multicast_router_timer);
	struct net_bridge *br = port->br;

	FUNC2(&br->multicast_lock);
	if (port->multicast_router == MDB_RTR_TYPE_DISABLED ||
	    port->multicast_router == MDB_RTR_TYPE_PERM ||
	    FUNC4(&port->multicast_router_timer))
		goto out;

	FUNC0(port);
out:
	FUNC3(&br->multicast_lock);
}