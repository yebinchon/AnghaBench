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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int IN ; 
 int OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char**) ; 
 int FUNC5 (char**,size_t*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 char* FUNC8 (char*,char const*) ; 

__attribute__((used)) static int FUNC9(const char *consumer, int *dir, int *value)
{
	char *debugfs;
	FILE *f;
	char *line = NULL;
	size_t len = 0;
	char *cur;
	int found = 0;

	if (FUNC4(&debugfs) != 0)
		FUNC0(EXIT_FAILURE, "debugfs is not mounted");

	f = FUNC2(debugfs, "r");
	if (!f)
		FUNC0(EXIT_FAILURE, "read from gpio debugfs failed");

	/*
	 * gpio-2   (                    |gpio-selftest               ) in  lo
	 */
	while (FUNC5(&line, &len, f) != -1) {
		cur = FUNC8(line, consumer);
		if (cur == NULL)
			continue;

		cur = FUNC6(line, ')');
		if (!cur)
			continue;

		cur += 2;
		if (!FUNC7(cur, "out", 3)) {
			*dir = OUT;
			cur += 4;
		} else if (!FUNC7(cur, "in", 2)) {
			*dir = IN;
			cur += 4;
		}

		if (!FUNC7(cur, "hi", 2))
			*value = 1;
		else if (!FUNC7(cur, "lo", 2))
			*value = 0;

		found = 1;
		break;
	}
	FUNC3(debugfs);
	FUNC1(f);
	FUNC3(line);

	if (!found)
		return -1;

	return 0;
}