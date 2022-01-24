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
struct net_device {scalar_t__ reg_state; int /*<<< orphan*/  ifalias; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NETREG_RELEASED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *d)
{
	struct net_device *dev = FUNC4(d);

	FUNC0(dev->reg_state != NETREG_RELEASED);

	/* no need to wait for rcu grace period:
	 * device is dead and about to be freed.
	 */
	FUNC1(FUNC3(dev->ifalias));
	FUNC2(dev);
}