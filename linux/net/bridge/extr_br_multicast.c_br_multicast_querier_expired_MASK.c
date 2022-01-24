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
struct net_bridge {int /*<<< orphan*/  multicast_lock; int /*<<< orphan*/  dev; } ;
struct bridge_mcast_own_query {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROPT_MULTICAST_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,struct bridge_mcast_own_query*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_bridge *br,
					 struct bridge_mcast_own_query *query)
{
	FUNC3(&br->multicast_lock);
	if (!FUNC2(br->dev) || !FUNC1(br, BROPT_MULTICAST_ENABLED))
		goto out;

	FUNC0(br, query);

out:
	FUNC4(&br->multicast_lock);
}