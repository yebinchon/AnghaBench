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
struct net_bridge_port {scalar_t__ multicast_router; int /*<<< orphan*/  multicast_router_timer; } ;
struct net_bridge {scalar_t__ multicast_router; scalar_t__ multicast_querier_interval; int /*<<< orphan*/  multicast_router_timer; } ;

/* Variables and functions */
 scalar_t__ MDB_RTR_TYPE_DISABLED ; 
 scalar_t__ MDB_RTR_TYPE_PERM ; 
 scalar_t__ MDB_RTR_TYPE_TEMP_QUERY ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,struct net_bridge_port*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_bridge *br,
				     struct net_bridge_port *port)
{
	unsigned long now = jiffies;

	if (!port) {
		if (br->multicast_router == MDB_RTR_TYPE_TEMP_QUERY) {
			if (!FUNC3(&br->multicast_router_timer))
				FUNC0(br, true);
			FUNC2(&br->multicast_router_timer,
				  now + br->multicast_querier_interval);
		}
		return;
	}

	if (port->multicast_router == MDB_RTR_TYPE_DISABLED ||
	    port->multicast_router == MDB_RTR_TYPE_PERM)
		return;

	FUNC1(br, port);

	FUNC2(&port->multicast_router_timer,
		  now + br->multicast_querier_interval);
}