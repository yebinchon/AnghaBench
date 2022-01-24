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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned long) ; 
 int FUNC5 (unsigned long) ; 

__attribute__((used)) static int FUNC6(unsigned long max)
{
	unsigned long x, last;

	if (!max)
		return 0;

	for (last = 0, x = 2; x < max; x++) {
		bool slow = FUNC5(x);
		bool fast = FUNC1(x);

		if (slow != fast) {
			FUNC3("inconsistent result for is-prime(%lu): slow=%s, fast=%s!",
			       x, slow ? "yes" : "no", fast ? "yes" : "no");
			goto err;
		}

		if (!slow)
			continue;

		if (FUNC2(last) != x) {
			FUNC3("incorrect result for next-prime(%lu): expected %lu, got %lu",
			       last, x, FUNC2(last));
			goto err;
		}
		last = x;
	}

	FUNC4("selftest(%lu) passed, last prime was %lu", x, last);
	return 0;

err:
	FUNC0();
	return -EINVAL;
}