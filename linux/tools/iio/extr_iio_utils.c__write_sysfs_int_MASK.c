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
 int FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int*) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(const char *filename, const char *basedir, int val,
			    int verify)
{
	int ret = 0;
	FILE *sysfsfp;
	int test;
	char *temp = FUNC5(FUNC8(basedir) + FUNC8(filename) + 2);

	if (!temp)
		return -ENOMEM;

	ret = FUNC7(temp, "%s/%s", basedir, filename);
	if (ret < 0)
		goto error_free;

	sysfsfp = FUNC1(temp, "w");
	if (!sysfsfp) {
		ret = -errno;
		FUNC2(stderr, "failed to open %s\n", temp);
		goto error_free;
	}

	ret = FUNC2(*sysfsfp, "%d", val);
	if (ret < 0) {
		if (FUNC0(sysfsfp))
			FUNC6("_write_sysfs_int(): Failed to close dir");

		goto error_free;
	}

	if (FUNC0(sysfsfp)) {
		ret = -errno;
		goto error_free;
	}

	if (verify) {
		sysfsfp = FUNC1(temp, "r");
		if (!sysfsfp) {
			ret = -errno;
			FUNC2(stderr, "failed to open %s\n", temp);
			goto error_free;
		}

		if (FUNC4(sysfsfp, "%d", &test) != 1) {
			ret = errno ? -errno : -ENODATA;
			if (FUNC0(sysfsfp))
				FUNC6("_write_sysfs_int(): Failed to close dir");

			goto error_free;
		}

		if (FUNC0(sysfsfp)) {
			ret = -errno;
			goto error_free;
		}

		if (test != val) {
			FUNC2(stderr,
				"Possible failure in int write %d to %s/%s\n",
				val, basedir, filename);
			ret = -1;
		}
	}

error_free:
	FUNC3(temp);
	return ret;
}