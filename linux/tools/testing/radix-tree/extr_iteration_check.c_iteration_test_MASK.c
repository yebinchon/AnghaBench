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
 int NUM_THREADS ; 
 int /*<<< orphan*/  add_entries_fn ; 
 int /*<<< orphan*/  array ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int max_order ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  remove_entries_fn ; 
 int /*<<< orphan*/ * seeds ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  tag_entries_fn ; 
 int /*<<< orphan*/  tagged_iteration_fn ; 
 int test_complete ; 
 int /*<<< orphan*/ * threads ; 
 int /*<<< orphan*/  untagged_iteration_fn ; 

void FUNC8(unsigned order, unsigned test_duration)
{
	int i;

	FUNC3(1, "Running %siteration tests for %d seconds\n",
			order > 0 ? "multiorder " : "", test_duration);

	max_order = order;
	test_complete = false;

	for (i = 0; i < 3; i++)
		seeds[i] = FUNC6();

	if (FUNC4(&threads[0], NULL, tagged_iteration_fn, NULL)) {
		FUNC2("create tagged iteration thread");
		FUNC0(1);
	}
	if (FUNC4(&threads[1], NULL, untagged_iteration_fn, NULL)) {
		FUNC2("create untagged iteration thread");
		FUNC0(1);
	}
	if (FUNC4(&threads[2], NULL, add_entries_fn, NULL)) {
		FUNC2("create add entry thread");
		FUNC0(1);
	}
	if (FUNC4(&threads[3], NULL, remove_entries_fn, NULL)) {
		FUNC2("create remove entry thread");
		FUNC0(1);
	}
	if (FUNC4(&threads[4], NULL, tag_entries_fn, NULL)) {
		FUNC2("create tag entry thread");
		FUNC0(1);
	}

	FUNC7(test_duration);
	test_complete = true;

	for (i = 0; i < NUM_THREADS; i++) {
		if (FUNC5(threads[i], NULL)) {
			FUNC2("pthread_join");
			FUNC0(1);
		}
	}

	FUNC1(&array);
}