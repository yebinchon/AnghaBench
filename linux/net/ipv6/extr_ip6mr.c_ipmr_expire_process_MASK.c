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
struct timer_list {int dummy; } ;
struct mr_table {int /*<<< orphan*/  mfc_unres_queue; int /*<<< orphan*/  ipmr_expire_timer; } ;

/* Variables and functions */
 struct mr_table* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mr_table*) ; 
 int /*<<< orphan*/  ipmr_expire_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mfc_unres_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct mr_table* mrt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct mr_table *mrt = FUNC0(mrt, t, ipmr_expire_timer);

	if (!FUNC4(&mfc_unres_lock)) {
		FUNC3(&mrt->ipmr_expire_timer, jiffies + 1);
		return;
	}

	if (!FUNC2(&mrt->mfc_unres_queue))
		FUNC1(mrt);

	FUNC5(&mfc_unres_lock);
}