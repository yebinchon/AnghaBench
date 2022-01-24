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
 scalar_t__ FUNC4 (struct list_head*,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10(char *dir, struct list_head *head)
{
	struct dirent *evt_ent;
	DIR *event_dir;

	event_dir = FUNC3(dir);
	if (!event_dir)
		return -EINVAL;

	while ((evt_ent = FUNC7(event_dir))) {
		char path[PATH_MAX];
		char *name = evt_ent->d_name;
		FILE *file;

		if (!FUNC9(name, ".") || !FUNC9(name, ".."))
			continue;

		/*
		 * skip info files parsed in perf_pmu__new_alias()
		 */
		if (FUNC5(name))
			continue;

		FUNC8(path, PATH_MAX, "%s/%s", dir, name);

		file = FUNC2(path, "r");
		if (!file) {
			FUNC6("Cannot open %s\n", path);
			continue;
		}

		if (FUNC4(head, dir, name, file) < 0)
			FUNC6("Cannot set up %s\n", name);
		FUNC1(file);
	}

	FUNC0(event_dir);
	return 0;
}