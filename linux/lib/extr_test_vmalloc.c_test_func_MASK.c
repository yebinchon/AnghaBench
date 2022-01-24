#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct test_driver {size_t cpu; void* stop; void* start; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_5__ {scalar_t__ time; int /*<<< orphan*/  test_failed; int /*<<< orphan*/  test_passed; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* test_func ) () ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_2__** per_cpu_test_data ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t) ; 
 int /*<<< orphan*/  prepare_for_test_rwsem ; 
 int run_test_mask ; 
 int /*<<< orphan*/  sequential_test_order ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 TYPE_1__* test_case_array ; 
 int test_repeat_count ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(void *private)
{
	struct test_driver *t = private;
	int random_array[FUNC0(test_case_array)];
	int index, i, j;
	ktime_t kt;
	u64 delta;

	if (FUNC10(current, FUNC1(t->cpu)) < 0)
		FUNC9("Failed to set affinity to %d CPU\n", t->cpu);

	for (i = 0; i < FUNC0(test_case_array); i++)
		random_array[i] = i;

	if (!sequential_test_order)
		FUNC11(random_array, FUNC0(test_case_array));

	/*
	 * Block until initialization is done.
	 */
	FUNC3(&prepare_for_test_rwsem);

	t->start = FUNC4();
	for (i = 0; i < FUNC0(test_case_array); i++) {
		index = random_array[i];

		/*
		 * Skip tests if run_test_mask has been specified.
		 */
		if (!((run_test_mask & (1 << index)) >> index))
			continue;

		kt = FUNC6();
		for (j = 0; j < test_repeat_count; j++) {
			if (!test_case_array[index].test_func())
				per_cpu_test_data[t->cpu][index].test_passed++;
			else
				per_cpu_test_data[t->cpu][index].test_failed++;
		}

		/*
		 * Take an average time that test took.
		 */
		delta = (u64) FUNC7(FUNC6(), kt);
		FUNC2(delta, (u32) test_repeat_count);

		per_cpu_test_data[t->cpu][index].time = delta;
	}
	t->stop = FUNC4();

	FUNC14(&prepare_for_test_rwsem);
	FUNC13();

	/*
	 * Wait for the kthread_stop() call.
	 */
	while (!FUNC5())
		FUNC8(10);

	return 0;
}