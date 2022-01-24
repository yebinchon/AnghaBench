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
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC4(const char *name)
{
	char path[PATH_MAX + 1];
	char mnt[PATH_MAX + 1];
	int fd;


	if (FUNC0(mnt, PATH_MAX + 1))
		return -1;

	FUNC3(path, PATH_MAX, "%s/%s", mnt, name);

	fd = FUNC2(path, O_RDONLY);
	if (fd == -1)
		FUNC1(stderr, "no access to cgroup %s\n", path);

	return fd;
}