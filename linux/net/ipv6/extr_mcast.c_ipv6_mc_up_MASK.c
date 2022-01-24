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
 int /*<<< orphan*/  FUNC0 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*,struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct inet6_dev *idev)
{
	struct ifmcaddr6 *i;

	/* Install multicast list, except for all-nodes (already installed) */

	FUNC3(&idev->lock);
	FUNC1(idev);
	for (i = idev->mc_list; i; i = i->next) {
		FUNC2(idev, i);
		FUNC0(i);
	}
	FUNC4(&idev->lock);
}