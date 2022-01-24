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
struct net_bridge {scalar_t__ multicast_startup_query_count; int /*<<< orphan*/  multicast_lock; } ;
struct bridge_mcast_querier {int /*<<< orphan*/  port; } ;
struct bridge_mcast_own_query {scalar_t__ startup_sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,int /*<<< orphan*/ *,struct bridge_mcast_own_query*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_bridge *br,
				       struct bridge_mcast_own_query *query,
				       struct bridge_mcast_querier *querier)
{
	FUNC2(&br->multicast_lock);
	if (query->startup_sent < br->multicast_startup_query_count)
		query->startup_sent++;

	FUNC0(querier->port, NULL);
	FUNC1(br, NULL, query);
	FUNC3(&br->multicast_lock);
}