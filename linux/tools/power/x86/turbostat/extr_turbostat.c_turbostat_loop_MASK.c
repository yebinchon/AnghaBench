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
struct timezone {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVEN_COUNTERS ; 
 int /*<<< orphan*/  ODD_COUNTERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_is_not_present ; 
 int /*<<< orphan*/  delta_cpu ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ exit_requested ; 
 scalar_t__ first_counter_read ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_counters ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct timezone*) ; 
 int num_iterations ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tv_delta ; 
 int /*<<< orphan*/  tv_even ; 
 int /*<<< orphan*/  tv_odd ; 

void FUNC13()
{
	int retval;
	int restarted = 0;
	int done_iters = 0;

	FUNC10();

restart:
	restarted++;

	FUNC11();
	retval = FUNC4(get_counters, EVEN_COUNTERS);
	first_counter_read = 0;
	if (retval < -1) {
		FUNC2(retval);
	} else if (retval == -1) {
		if (restarted > 1) {
			FUNC2(retval);
		}
		FUNC9();
		goto restart;
	}
	restarted = 0;
	done_iters = 0;
	FUNC8(&tv_even, (struct timezone *)NULL);

	while (1) {
		if (FUNC6(cpu_is_not_present)) {
			FUNC9();
			goto restart;
		}
		FUNC1();
		if (FUNC11())
			goto restart;
		retval = FUNC4(get_counters, ODD_COUNTERS);
		if (retval < -1) {
			FUNC2(retval);
		} else if (retval == -1) {
			FUNC9();
			goto restart;
		}
		FUNC8(&tv_odd, (struct timezone *)NULL);
		FUNC12(&tv_odd, &tv_even, &tv_delta);
		if (FUNC5(delta_cpu, ODD_COUNTERS, EVEN_COUNTERS)) {
			FUNC9();
			goto restart;
		}
		FUNC0(EVEN_COUNTERS);
		FUNC7(EVEN_COUNTERS);
		FUNC3();
		if (exit_requested)
			break;
		if (num_iterations && ++done_iters >= num_iterations)
			break;
		FUNC1();
		if (FUNC11())
			goto restart;
		retval = FUNC4(get_counters, EVEN_COUNTERS);
		if (retval < -1) {
			FUNC2(retval);
		} else if (retval == -1) {
			FUNC9();
			goto restart;
		}
		FUNC8(&tv_even, (struct timezone *)NULL);
		FUNC12(&tv_even, &tv_odd, &tv_delta);
		if (FUNC5(delta_cpu, EVEN_COUNTERS, ODD_COUNTERS)) {
			FUNC9();
			goto restart;
		}
		FUNC0(ODD_COUNTERS);
		FUNC7(ODD_COUNTERS);
		FUNC3();
		if (exit_requested)
			break;
		if (num_iterations && ++done_iters >= num_iterations)
			break;
	}
}