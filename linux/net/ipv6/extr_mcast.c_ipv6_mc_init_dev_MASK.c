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
struct inet6_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  mc_dad_timer; int /*<<< orphan*/  mc_ifc_timer; scalar_t__ mc_ifc_count; int /*<<< orphan*/ * mc_tomb; int /*<<< orphan*/  mc_gq_timer; scalar_t__ mc_gq_running; int /*<<< orphan*/  mc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inet6_dev*) ; 
 int /*<<< orphan*/  mld_dad_timer_expire ; 
 int /*<<< orphan*/  mld_gq_timer_expire ; 
 int /*<<< orphan*/  mld_ifc_timer_expire ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct inet6_dev *idev)
{
	FUNC3(&idev->lock);
	FUNC1(&idev->mc_lock);
	idev->mc_gq_running = 0;
	FUNC2(&idev->mc_gq_timer, mld_gq_timer_expire, 0);
	idev->mc_tomb = NULL;
	idev->mc_ifc_count = 0;
	FUNC2(&idev->mc_ifc_timer, mld_ifc_timer_expire, 0);
	FUNC2(&idev->mc_dad_timer, mld_dad_timer_expire, 0);
	FUNC0(idev);
	FUNC4(&idev->lock);
}