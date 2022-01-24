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
 char* MICSYSFSDIR ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*,...) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int,char*,int /*<<< orphan*/ ) ; 

int
FUNC10(char *dir, char *entry, char *value)
{
	char filename[PATH_MAX];
	char *oldvalue;
	int fd, ret = 0;

	if (dir == NULL)
		FUNC5(filename, PATH_MAX, "%s/%s", MICSYSFSDIR, entry);
	else
		FUNC5(filename, PATH_MAX, "%s/%s/%s",
			 MICSYSFSDIR, dir, entry);

	oldvalue = FUNC4(dir, entry);

	fd = FUNC3(filename, O_RDWR);
	if (fd < 0) {
		ret = errno;
		FUNC2("Failed to open sysfs entry '%s': %s\n",
			filename, FUNC7(errno));
		goto done;
	}

	if (!oldvalue || FUNC6(value, oldvalue)) {
		if (FUNC9(fd, value, FUNC8(value)) < 0) {
			ret = errno;
			FUNC2("Failed to write new sysfs entry '%s': %s\n",
				filename, FUNC7(errno));
		}
	}
	FUNC0(fd);
done:
	if (oldvalue)
		FUNC1(oldvalue);
	return ret;
}