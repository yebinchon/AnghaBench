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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOF_SUSPEND_DELAY_MS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	FUNC0(dev, "Completing SOF PCI probe");

	/* allow runtime_pm */
	FUNC4(dev, SND_SOF_SUSPEND_DELAY_MS);
	FUNC5(dev);

	/*
	 * runtime pm for pci device is "forbidden" by default.
	 * so call pm_runtime_allow() to enable it.
	 */
	FUNC1(dev);

	/* mark last_busy for pm_runtime to make sure not suspend immediately */
	FUNC2(dev);

	/* follow recommendation in pci-driver.c to decrement usage counter */
	FUNC3(dev);
}