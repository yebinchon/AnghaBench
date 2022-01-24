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
struct delayed_work {int /*<<< orphan*/  work; int /*<<< orphan*/  wq; int /*<<< orphan*/  cpu; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

bool FUNC5(struct delayed_work *dwork)
{
	FUNC3();
	if (FUNC1(&dwork->timer))
		FUNC0(dwork->cpu, dwork->wq, &dwork->work);
	FUNC4();
	return FUNC2(&dwork->work);
}