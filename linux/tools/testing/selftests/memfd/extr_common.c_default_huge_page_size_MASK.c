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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,unsigned long*) ; 

unsigned long FUNC5(void)
{
	unsigned long hps = 0;
	char *line = NULL;
	size_t linelen = 0;
	FILE *f = FUNC1("/proc/meminfo", "r");

	if (!f)
		return 0;
	while (FUNC3(&line, &linelen, f) > 0) {
		if (FUNC4(line, "Hugepagesize:       %lu kB", &hps) == 1) {
			hps <<= 10;
			break;
		}
	}

	FUNC2(line);
	FUNC0(f);
	return hps;
}