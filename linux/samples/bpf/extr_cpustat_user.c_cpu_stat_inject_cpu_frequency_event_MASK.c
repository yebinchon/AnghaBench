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
 int /*<<< orphan*/  CPUFREQ_HIGHEST_FREQ ; 
 int /*<<< orphan*/  CPUFREQ_LOWEST_FREQ ; 
 int /*<<< orphan*/  CPUFREQ_MAX_SYSFS_PATH ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
	int len, fd;

	fd = FUNC1(CPUFREQ_MAX_SYSFS_PATH, O_WRONLY);
	if (fd < 0) {
		FUNC2("failed to open scaling_max_freq, errno=%d\n", errno);
		return fd;
	}

	len = FUNC4(fd, CPUFREQ_LOWEST_FREQ, FUNC3(CPUFREQ_LOWEST_FREQ));
	if (len < 0) {
		FUNC2("failed to open scaling_max_freq, errno=%d\n", errno);
		goto err;
	}

	len = FUNC4(fd, CPUFREQ_HIGHEST_FREQ, FUNC3(CPUFREQ_HIGHEST_FREQ));
	if (len < 0) {
		FUNC2("failed to open scaling_max_freq, errno=%d\n", errno);
		goto err;
	}

err:
	FUNC0(fd);
	return len;
}