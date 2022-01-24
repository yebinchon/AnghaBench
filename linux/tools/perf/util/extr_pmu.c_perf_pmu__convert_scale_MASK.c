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
 int ENOMEM ; 
 int /*<<< orphan*/  LC_NUMERIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char*) ; 
 double FUNC3 (char const*,char**) ; 

int FUNC4(const char *scale, char **end, double *sval)
{
	char *lc;
	int ret = 0;

	/*
	 * save current locale
	 */
	lc = FUNC1(LC_NUMERIC, NULL);

	/*
	 * The lc string may be allocated in static storage,
	 * so get a dynamic copy to make it survive setlocale
	 * call below.
	 */
	lc = FUNC2(lc);
	if (!lc) {
		ret = -ENOMEM;
		goto out;
	}

	/*
	 * force to C locale to ensure kernel
	 * scale string is converted correctly.
	 * kernel uses default C locale.
	 */
	FUNC1(LC_NUMERIC, "C");

	*sval = FUNC3(scale, end);

out:
	/* restore locale */
	FUNC1(LC_NUMERIC, lc);
	FUNC0(lc);
	return ret;
}