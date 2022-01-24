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
struct perf_pmu_alias {int per_pkg; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static int
FUNC3(struct perf_pmu_alias *alias, char *dir, char *name)
{
	char path[PATH_MAX];
	int fd;

	FUNC2(path, PATH_MAX, "%s/%s.per-pkg", dir, name);

	fd = FUNC1(path, O_RDONLY);
	if (fd == -1)
		return -1;

	FUNC0(fd);

	alias->per_pkg = true;
	return 0;
}