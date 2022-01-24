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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  nr_allocated ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void)
{
	FUNC7();
	FUNC2();
	FUNC1();
	FUNC5();
	FUNC4(2, "after extend_checks: %d allocated\n", nr_allocated);
	FUNC0();
	FUNC3();
	FUNC5();
	FUNC4(2, "after leak_check: %d allocated\n", nr_allocated);
	FUNC6();
	FUNC5();
	FUNC4(2, "after simple_checks: %d allocated\n", nr_allocated);
	FUNC8();
	FUNC5();
	FUNC4(2, "after thrash_tags: %d allocated\n", nr_allocated);
}