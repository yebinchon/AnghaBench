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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int DNAME_PATH_MAX ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int SYSFS_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,int) ; 

int FUNC8(const char *rc)
{
	struct dirent *dent;
	char buf[SYSFS_PATH_MAX + DNAME_PATH_MAX];
	DIR *d;
	int fd;

	FUNC6(buf, sizeof(buf), "/sys/class/rc/%s", rc);

	d = FUNC4(buf);
	if (!d)
		FUNC1("cannot open %s: %m\n", buf);

	while ((dent = FUNC5(d)) != NULL) {
		if (!FUNC7(dent->d_name, "lirc", 4)) {
			FUNC6(buf, sizeof(buf), "/dev/%s", dent->d_name);
			break;
		}
	}

	if (!dent)
		FUNC2("cannot find lirc device for %s\n", rc);

	FUNC0(d);

	fd = FUNC3(buf, O_RDWR | O_NONBLOCK);
	if (fd == -1)
		FUNC1("cannot open: %s: %m\n", buf);

	return fd;
}