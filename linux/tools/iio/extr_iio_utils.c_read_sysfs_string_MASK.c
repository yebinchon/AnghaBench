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
 int ENODATA ; 
 int ENOMEM ; 
 int errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char const*) ; 

int FUNC9(const char *filename, const char *basedir, char *str)
{
	int ret = 0;
	FILE  *sysfsfp;
	char *temp = FUNC5(FUNC8(basedir) + FUNC8(filename) + 2);

	if (!temp) {
		FUNC2(stderr, "Memory allocation failed");
		return -ENOMEM;
	}

	ret = FUNC7(temp, "%s/%s", basedir, filename);
	if (ret < 0)
		goto error_free;

	sysfsfp = FUNC1(temp, "r");
	if (!sysfsfp) {
		ret = -errno;
		goto error_free;
	}

	errno = 0;
	if (FUNC4(sysfsfp, "%s\n", str) != 1) {
		ret = errno ? -errno : -ENODATA;
		if (FUNC0(sysfsfp))
			FUNC6("read_sysfs_string(): Failed to close dir");

		goto error_free;
	}

	if (FUNC0(sysfsfp))
		ret = -errno;

error_free:
	FUNC3(temp);

	return ret;
}