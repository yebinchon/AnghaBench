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
typedef  int /*<<< orphan*/  value ;

/* Variables and functions */
 char* MICSYSFSDIR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PAGE_SIZE ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*) ; 

char *
FUNC9(char *dir, char *entry)
{
	char filename[PATH_MAX];
	char value[PAGE_SIZE];
	char *string = NULL;
	int fd;
	int len;

	if (dir == NULL)
		FUNC5(filename, PATH_MAX, "%s/%s", MICSYSFSDIR, entry);
	else
		FUNC5(filename, PATH_MAX,
			 "%s/%s/%s", MICSYSFSDIR, dir, entry);

	fd = FUNC3(filename, O_RDONLY);
	if (fd < 0) {
		FUNC2("Failed to open sysfs entry '%s': %s\n",
			filename, FUNC7(errno));
		return NULL;
	}

	len = FUNC4(fd, value, sizeof(value));
	if (len < 0) {
		FUNC2("Failed to read sysfs entry '%s': %s\n",
			filename, FUNC7(errno));
		goto readsys_ret;
	}
	if (len == 0)
		goto readsys_ret;

	value[len - 1] = '\0';

	string = FUNC1(FUNC8(value) + 1);
	if (string)
		FUNC6(string, value);

readsys_ret:
	FUNC0(fd);
	return string;
}