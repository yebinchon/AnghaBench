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
struct net_bridge {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  BROPT_MTU_SET_BY_USER ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*) ; 
 scalar_t__ FUNC2 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_bridge*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct net_bridge *br)
{
	FUNC0();

	/* if the bridge MTU was manually configured don't mess with it */
	if (FUNC2(br, BROPT_MTU_SET_BY_USER))
		return;

	/* change to the minimum MTU and clear the flag which was set by
	 * the bridge ndo_change_mtu callback
	 */
	FUNC4(br->dev, FUNC1(br));
	FUNC3(br, BROPT_MTU_SET_BY_USER, false);
}