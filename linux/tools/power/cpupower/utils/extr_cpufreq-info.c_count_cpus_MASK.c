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
 int LINE_LEN ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int FUNC6 (char*,char*,unsigned int*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static unsigned int FUNC10(void)
{
	FILE *fp;
	char value[LINE_LEN];
	unsigned int ret = 0;
	unsigned int cpunr = 0;

	fp = FUNC4("/proc/stat", "r");
	if (!fp) {
		FUNC5(FUNC0("Couldn't count the number of CPUs (%s: %s), assuming 1\n"), "/proc/stat", FUNC7(errno));
		return 1;
	}

	while (!FUNC2(fp)) {
		if (!FUNC3(value, LINE_LEN, fp))
			continue;
		value[LINE_LEN - 1] = '\0';
		if (FUNC8(value) < (LINE_LEN - 2))
			continue;
		if (FUNC9(value, "cpu "))
			continue;
		if (FUNC6(value, "cpu%d ", &cpunr) != 1)
			continue;
		if (cpunr > ret)
			ret = cpunr;
	}
	FUNC1(fp);

	/* cpu count starts from 0, on error return 1 (UP) */
	return ret + 1;
}