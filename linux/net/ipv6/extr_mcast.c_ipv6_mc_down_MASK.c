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
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct inet6_dev *idev)
{
	struct ifmcaddr6 *i;

	/* Withdraw multicast list */

	FUNC4(&idev->lock);

	for (i = idev->mc_list; i; i = i->next)
		FUNC0(i);

	/* Should stop timer after group drop. or we will
	 * start timer again in mld_ifc_event()
	 */
	FUNC3(idev);
	FUNC2(idev);
	FUNC1(idev);
	FUNC5(&idev->lock);
}