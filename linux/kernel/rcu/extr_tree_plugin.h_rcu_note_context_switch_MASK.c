#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  rcu_need_heavy_qs; int /*<<< orphan*/  rcu_urgent_qs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ rcu_data ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(bool preempt)
{
	FUNC8(FUNC0("Start context switch"));
	FUNC3();
	/* Load rcu_urgent_qs before other flags. */
	if (!FUNC5(FUNC6(&rcu_data.rcu_urgent_qs)))
		goto out;
	FUNC7(rcu_data.rcu_urgent_qs, false);
	if (FUNC9(FUNC1(rcu_data.rcu_need_heavy_qs)))
		FUNC2();
	if (!preempt)
		FUNC4(current);
out:
	FUNC8(FUNC0("End context switch"));
}