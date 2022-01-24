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
struct stat {int dummy; } ;
struct perf_pmu_alias {int /*<<< orphan*/  scale; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  scale ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static int FUNC6(struct perf_pmu_alias *alias, char *dir, char *name)
{
	struct stat st;
	ssize_t sret;
	char scale[128];
	int fd, ret = -1;
	char path[PATH_MAX];

	FUNC5(path, PATH_MAX, "%s/%s.scale", dir, name);

	fd = FUNC2(path, O_RDONLY);
	if (fd == -1)
		return -1;

	if (FUNC1(fd, &st) < 0)
		goto error;

	sret = FUNC4(fd, scale, sizeof(scale)-1);
	if (sret < 0)
		goto error;

	if (scale[sret - 1] == '\n')
		scale[sret - 1] = '\0';
	else
		scale[sret] = '\0';

	ret = FUNC3(scale, NULL, &alias->scale);
error:
	FUNC0(fd);
	return ret;
}