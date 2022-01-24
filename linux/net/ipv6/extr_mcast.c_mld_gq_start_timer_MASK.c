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
struct inet6_dev {unsigned long mc_maxdelay; int mc_gq_running; int /*<<< orphan*/  mc_gq_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inet6_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned long FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct inet6_dev *idev)
{
	unsigned long tv = FUNC2() % idev->mc_maxdelay;

	idev->mc_gq_running = 1;
	if (!FUNC1(&idev->mc_gq_timer, jiffies+tv+2))
		FUNC0(idev);
}