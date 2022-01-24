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
struct net_bridge {scalar_t__ multicast_querier_interval; } ;
struct bridge_mcast_other_query {int /*<<< orphan*/  timer; scalar_t__ delay_time; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct net_bridge *br,
				struct bridge_mcast_other_query *query,
				unsigned long max_delay)
{
	if (!FUNC1(&query->timer))
		query->delay_time = jiffies + max_delay;

	FUNC0(&query->timer, jiffies + br->multicast_querier_interval);
}