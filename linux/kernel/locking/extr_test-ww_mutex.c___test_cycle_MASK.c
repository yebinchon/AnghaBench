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
struct test_cycle {int /*<<< orphan*/  a_mutex; scalar_t__ result; int /*<<< orphan*/  work; int /*<<< orphan*/  b_signal; int /*<<< orphan*/ * a_signal; int /*<<< orphan*/ * b_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct test_cycle*) ; 
 struct test_cycle* FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_cycle_work ; 
 int /*<<< orphan*/  wq ; 
 int /*<<< orphan*/  ww_class ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(unsigned int nthreads)
{
	struct test_cycle *cycles;
	unsigned int n, last = nthreads - 1;
	int ret;

	cycles = FUNC4(nthreads, sizeof(*cycles), GFP_KERNEL);
	if (!cycles)
		return -ENOMEM;

	for (n = 0; n < nthreads; n++) {
		struct test_cycle *cycle = &cycles[n];

		FUNC8(&cycle->a_mutex, &ww_class);
		if (n == last)
			cycle->b_mutex = &cycles[0].a_mutex;
		else
			cycle->b_mutex = &cycles[n + 1].a_mutex;

		if (n == 0)
			cycle->a_signal = &cycles[last].b_signal;
		else
			cycle->a_signal = &cycles[n - 1].b_signal;
		FUNC2(&cycle->b_signal);

		FUNC0(&cycle->work, test_cycle_work);
		cycle->result = 0;
	}

	for (n = 0; n < nthreads; n++)
		FUNC6(wq, &cycles[n].work);

	FUNC1(wq);

	ret = 0;
	for (n = 0; n < nthreads; n++) {
		struct test_cycle *cycle = &cycles[n];

		if (!cycle->result)
			continue;

		FUNC5("cyclic deadlock not resolved, ret[%d/%d] = %d\n",
		       n, nthreads, cycle->result);
		ret = -EINVAL;
		break;
	}

	for (n = 0; n < nthreads; n++)
		FUNC7(&cycles[n].a_mutex);
	FUNC3(cycles);
	return ret;
}