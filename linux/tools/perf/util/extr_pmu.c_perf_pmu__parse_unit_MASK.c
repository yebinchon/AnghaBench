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
struct perf_pmu_alias {char* unit; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  UNIT_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static int FUNC4(struct perf_pmu_alias *alias, char *dir, char *name)
{
	char path[PATH_MAX];
	ssize_t sret;
	int fd;

	FUNC3(path, PATH_MAX, "%s/%s.unit", dir, name);

	fd = FUNC1(path, O_RDONLY);
	if (fd == -1)
		return -1;

	sret = FUNC2(fd, alias->unit, UNIT_MAX_LEN);
	if (sret < 0)
		goto error;

	FUNC0(fd);

	if (alias->unit[sret - 1] == '\n')
		alias->unit[sret - 1] = '\0';
	else
		alias->unit[sret] = '\0';

	return 0;
error:
	FUNC0(fd);
	alias->unit[0] = '\0';
	return -1;
}