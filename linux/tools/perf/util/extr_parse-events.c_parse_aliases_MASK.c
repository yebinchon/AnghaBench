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
 int PERF_EVSEL__MAX_ALIASES ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC2(char *str, const char *names[][PERF_EVSEL__MAX_ALIASES], int size)
{
	int i, j;
	int n, longest = -1;

	for (i = 0; i < size; i++) {
		for (j = 0; j < PERF_EVSEL__MAX_ALIASES && names[i][j]; j++) {
			n = FUNC0(names[i][j]);
			if (n > longest && !FUNC1(str, names[i][j], n))
				longest = n;
		}
		if (longest > 0)
			return i;
	}

	return -1;
}