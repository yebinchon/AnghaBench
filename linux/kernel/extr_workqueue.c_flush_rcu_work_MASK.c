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
struct rcu_work {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORK_STRUCT_PENDING_BIT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(struct rcu_work *rwork)
{
	if (FUNC2(WORK_STRUCT_PENDING_BIT, FUNC3(&rwork->work))) {
		FUNC1();
		FUNC0(&rwork->work);
		return true;
	} else {
		return FUNC0(&rwork->work);
	}
}