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
struct list_head {int dummy; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int EINVAL ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/ * perf_pmu_in ; 
 int FUNC4 (struct list_head*,char*) ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

int FUNC8(char *dir, struct list_head *head)
{
	struct dirent *evt_ent;
	DIR *format_dir;
	int ret = 0;

	format_dir = FUNC3(dir);
	if (!format_dir)
		return -EINVAL;

	while (!ret && (evt_ent = FUNC5(format_dir))) {
		char path[PATH_MAX];
		char *name = evt_ent->d_name;
		FILE *file;

		if (!FUNC7(name, ".") || !FUNC7(name, ".."))
			continue;

		FUNC6(path, PATH_MAX, "%s/%s", dir, name);

		ret = -EINVAL;
		file = FUNC2(path, "r");
		if (!file)
			break;

		perf_pmu_in = file;
		ret = FUNC4(head, name);
		FUNC1(file);
	}

	FUNC0(format_dir);
	return ret;
}