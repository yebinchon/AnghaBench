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
struct unicode_data {int /*<<< orphan*/ * utf8nfdi; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LINESIZE ; 
 char* buf0 ; 
 char* buf1 ; 
 char* buf2 ; 
 char* buf3 ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 char* line ; 
 int /*<<< orphan*/  nfdi_tree ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (char*,char*,char*,char*) ; 
 unsigned int FUNC8 (char*,char**,int) ; 
 char* test_name ; 
 struct unicode_data* unicode_data ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned int) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void FUNC10(void)
{
	FILE *file;
	unsigned int unichar;
	struct unicode_data *data;
	char *s;
	char *t;
	int ret;
	int ignorables;
	int tests = 0;
	int failures = 0;

	if (verbose > 0)
		FUNC6("Parsing %s\n", test_name);
	/* Step one, read data from file. */
	file = FUNC3(test_name, "r");
	if (!file)
		FUNC5(test_name, errno);

	while (FUNC1(line, LINESIZE, file)) {
		ret = FUNC7(line, "%[^;];%*[^;];%[^;];%*[^;];%*[^;];",
			     buf0, buf1);
		if (ret != 2 || *line == '#')
			continue;
		s = buf0;
		t = buf2;
		while (*s) {
			unichar = FUNC8(s, &s, 16);
			t += FUNC9(t, unichar);
		}
		*t = '\0';

		ignorables = 0;
		s = buf1;
		t = buf3;
		while (*s) {
			unichar = FUNC8(s, &s, 16);
			data = &unicode_data[unichar];
			if (data->utf8nfdi && !*data->utf8nfdi)
				ignorables = 1;
			else
				t += FUNC9(t, unichar);
		}
		*t = '\0';

		tests++;
		if (FUNC4(nfdi_tree) < 0) {
			FUNC6("Line %s -> %s", buf0, buf1);
			if (ignorables)
				FUNC6(" (ignorables removed)");
			FUNC6(" failure\n");
			failures++;
		}
	}
	FUNC0(file);
	if (verbose > 0)
		FUNC6("Ran %d tests with %d failures\n", tests, failures);
	if (failures)
		FUNC2(test_name);
}