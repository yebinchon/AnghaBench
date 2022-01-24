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
struct net_device {int flags; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  __LINK_STATE_LINKWATCH_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	/*
	 * Make sure the above read is complete since it can be
	 * rewritten as soon as we clear the bit below.
	 */
	FUNC8();

	/* We are about to handle this device,
	 * so new events can be accepted
	 */
	FUNC0(__LINK_STATE_LINKWATCH_PENDING, &dev->state);

	FUNC7(dev);
	if (dev->flags & IFF_UP && FUNC6(dev)) {
		if (FUNC5(dev))
			FUNC1(dev);
		else
			FUNC2(dev);

		FUNC4(dev);
	}
	FUNC3(dev);
}