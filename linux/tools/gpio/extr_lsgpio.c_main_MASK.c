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
struct dirent {char const* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int FUNC2 (int,char**,char*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(int argc, char **argv)
{
	const char *device_name = NULL;
	int ret;
	int c;

	while ((c = FUNC2(argc, argv, "n:")) != -1) {
		switch (c) {
		case 'n':
			device_name = optarg;
			break;
		case '?':
			FUNC6();
			return -1;
		}
	}

	if (device_name)
		ret = FUNC3(device_name);
	else {
		const struct dirent *ent;
		DIR *dp;

		/* List all GPIO devices one at a time */
		dp = FUNC4("/dev");
		if (!dp) {
			ret = -errno;
			goto error_out;
		}

		ret = -ENOENT;
		while (ent = FUNC7(dp), ent) {
			if (FUNC0(ent->d_name, "gpiochip")) {
				ret = FUNC3(ent->d_name);
				if (ret)
					break;
			}
		}

		ret = 0;
		if (FUNC1(dp) == -1) {
			FUNC5("scanning devices: Failed to close directory");
			ret = -errno;
		}
	}
error_out:
	return ret;
}