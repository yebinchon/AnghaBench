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
typedef  int /*<<< orphan*/  governor_buf ;
typedef  int /*<<< orphan*/  driver_buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int base_cpu ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC7(void)
{
	char path[64];
	char driver_buf[64];
	char governor_buf[64];
	FILE *input;
	int turbo;

	FUNC6(path, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_driver",
			base_cpu);
	input = FUNC3(path, "r");
	if (input == NULL) {
		FUNC4(outf, "NSFOD %s\n", path);
		return;
	}
	if (!FUNC2(driver_buf, sizeof(driver_buf), input))
		FUNC0(1, "%s: failed to read file", path);
	FUNC1(input);

	FUNC6(path, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_governor",
			base_cpu);
	input = FUNC3(path, "r");
	if (input == NULL) {
		FUNC4(outf, "NSFOD %s\n", path);
		return;
	}
	if (!FUNC2(governor_buf, sizeof(governor_buf), input))
		FUNC0(1, "%s: failed to read file", path);
	FUNC1(input);

	FUNC4(outf, "cpu%d: cpufreq driver: %s", base_cpu, driver_buf);
	FUNC4(outf, "cpu%d: cpufreq governor: %s", base_cpu, governor_buf);

	FUNC6(path, "/sys/devices/system/cpu/cpufreq/boost");
	input = FUNC3(path, "r");
	if (input != NULL) {
		if (FUNC5(input, "%d", &turbo) != 1)
			FUNC0(1, "%s: failed to parse number from file", path);
		FUNC4(outf, "cpufreq boost: %d\n", turbo);
		FUNC1(input);
	}

	FUNC6(path, "/sys/devices/system/cpu/intel_pstate/no_turbo");
	input = FUNC3(path, "r");
	if (input != NULL) {
		if (FUNC5(input, "%d", &turbo) != 1)
			FUNC0(1, "%s: failed to parse number from file", path);
		FUNC4(outf, "cpufreq intel_pstate no_turbo: %d\n", turbo);
		FUNC1(input);
	}
}