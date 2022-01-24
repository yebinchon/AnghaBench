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
typedef  int /*<<< orphan*/  name_buf ;
typedef  int /*<<< orphan*/  desc ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BIC_sysfs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int base_cpu ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,char*,char*) ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int) ; 
 char* FUNC7 (char*,char) ; 
 char* FUNC8 (char*,char) ; 

__attribute__((used)) static void
FUNC9(void)
{
	char path[64];
	char name_buf[16];
	char desc[64];
	FILE *input;
	int state;
	char *sp;

	if (!FUNC0(BIC_sysfs))
		return;

	for (state = 0; state < 10; ++state) {

		FUNC6(path, "/sys/devices/system/cpu/cpu%d/cpuidle/state%d/name",
			base_cpu, state);
		input = FUNC4(path, "r");
		if (input == NULL)
			continue;
		if (!FUNC3(name_buf, sizeof(name_buf), input))
			FUNC1(1, "%s: failed to read file", path);

		 /* truncate "C1-HSW\n" to "C1", or truncate "C1\n" to "C1" */
		sp = FUNC7(name_buf, '-');
		if (!sp)
			sp = FUNC8(name_buf, '\n');
		*sp = '\0';
		FUNC2(input);

		FUNC6(path, "/sys/devices/system/cpu/cpu%d/cpuidle/state%d/desc",
			base_cpu, state);
		input = FUNC4(path, "r");
		if (input == NULL)
			continue;
		if (!FUNC3(desc, sizeof(desc), input))
			FUNC1(1, "%s: failed to read file", path);

		FUNC5(outf, "cpu%d: %s: %s", base_cpu, name_buf, desc);
		FUNC2(input);
	}
}