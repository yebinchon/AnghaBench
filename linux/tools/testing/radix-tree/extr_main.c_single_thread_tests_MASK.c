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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  nr_allocated ; 
 int /*<<< orphan*/  preempt_count ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(bool long_run)
{
	int i;

	FUNC9(1, "starting single_thread_tests: %d allocated, preempt %d\n",
		nr_allocated, preempt_count);
	FUNC8();
	FUNC10();
	FUNC9(2, "after multiorder_check: %d allocated, preempt %d\n",
		nr_allocated, preempt_count);
	FUNC11();
	FUNC10();
	FUNC9(2, "after tag_check: %d allocated, preempt %d\n",
		nr_allocated, preempt_count);
	FUNC5();
	FUNC10();
	FUNC9(2, "after gang_check: %d allocated, preempt %d\n",
		nr_allocated, preempt_count);
	FUNC0();
	FUNC10();
	FUNC9(2, "after add_and_check: %d allocated, preempt %d\n",
		nr_allocated, preempt_count);
	FUNC3();
	FUNC10();
	FUNC9(2, "after dynamic_height_check: %d allocated, preempt %d\n",
		nr_allocated, preempt_count);
	FUNC7();
	FUNC6();
	FUNC10();
	FUNC9(2, "after idr_checks: %d allocated, preempt %d\n",
		nr_allocated, preempt_count);
	FUNC1(long_run);
	FUNC10();
	FUNC9(2, "after big_gang_check: %d allocated, preempt %d\n",
		nr_allocated, preempt_count);
	for (i = 0; i < (long_run ? 2000 : 3); i++) {
		FUNC2();
		FUNC9(2, "%d ", i);
		FUNC4(stdout);
	}
	FUNC10();
	FUNC9(2, "after copy_tag_check: %d allocated, preempt %d\n",
		nr_allocated, preempt_count);
}