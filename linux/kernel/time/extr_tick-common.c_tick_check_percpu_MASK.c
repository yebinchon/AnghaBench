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
struct clock_event_device {scalar_t__ irq; int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static bool FUNC4(struct clock_event_device *curdev,
			      struct clock_event_device *newdev, int cpu)
{
	if (!FUNC2(cpu, newdev->cpumask))
		return false;
	if (FUNC0(newdev->cpumask, FUNC1(cpu)))
		return true;
	/* Check if irq affinity can be set */
	if (newdev->irq >= 0 && !FUNC3(newdev->irq))
		return false;
	/* Prefer an existing cpu local device */
	if (curdev && FUNC0(curdev->cpumask, FUNC1(cpu)))
		return false;
	return true;
}