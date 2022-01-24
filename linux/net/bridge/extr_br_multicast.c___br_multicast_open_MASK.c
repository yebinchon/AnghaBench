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
struct net_bridge {int dummy; } ;
struct bridge_mcast_own_query {int /*<<< orphan*/  timer; scalar_t__ startup_sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_MULTICAST_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_bridge *br,
				struct bridge_mcast_own_query *query)
{
	query->startup_sent = 0;

	if (!FUNC0(br, BROPT_MULTICAST_ENABLED))
		return;

	FUNC1(&query->timer, jiffies);
}