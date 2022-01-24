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
struct inet6_dev {int /*<<< orphan*/  lock; struct ifmcaddr6* mc_list; } ;
struct ifmcaddr6 {struct ifmcaddr6* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ifmcaddr6*) ; 
 scalar_t__ FUNC2 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct inet6_dev *idev)
{
	struct ifmcaddr6 *pmc;

	FUNC0();

	if (FUNC2(idev)) {
		FUNC4(&idev->lock);
		for (pmc = idev->mc_list; pmc; pmc = pmc->next)
			FUNC1(pmc);
		FUNC5(&idev->lock);
	} else
		FUNC3(idev, NULL);
}