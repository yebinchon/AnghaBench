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
struct bpf_test {char* descr; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_test*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int skips ; 
 scalar_t__ FUNC3 (struct bpf_test*) ; 
 struct bpf_test* tests ; 
 scalar_t__ unpriv_disabled ; 

__attribute__((used)) static int FUNC4(bool unpriv, unsigned int from, unsigned int to)
{
	int i, passes = 0, errors = 0;

	for (i = from; i < to; i++) {
		struct bpf_test *test = &tests[i];

		/* Program types that are not supported by non-root we
		 * skip right away.
		 */
		if (FUNC3(test) && unpriv_disabled) {
			FUNC1("#%d/u %s SKIP\n", i, test->descr);
			skips++;
		} else if (FUNC3(test)) {
			if (!unpriv)
				FUNC2(false);
			FUNC1("#%d/u %s ", i, test->descr);
			FUNC0(test, true, &passes, &errors);
			if (!unpriv)
				FUNC2(true);
		}

		if (unpriv) {
			FUNC1("#%d/p %s SKIP\n", i, test->descr);
			skips++;
		} else {
			FUNC1("#%d/p %s ", i, test->descr);
			FUNC0(test, false, &passes, &errors);
		}
	}

	FUNC1("Summary: %d PASSED, %d SKIPPED, %d FAILED\n", passes,
	       skips, errors);
	return errors ? EXIT_FAILURE : EXIT_SUCCESS;
}