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
struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 scalar_t__ DT_LNK ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int* cpunode_map ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int,char*,char const*,...) ; 
 int FUNC6 (char*,char*,unsigned int*) ; 
 char* FUNC7 () ; 

int FUNC8(void)
{
	struct dirent *dent1, *dent2;
	DIR *dir1, *dir2;
	unsigned int cpu, mem;
	char buf[PATH_MAX];
	char path[PATH_MAX];
	const char *mnt;
	int n;

	/* initialize globals */
	if (FUNC1())
		return -1;

	mnt = FUNC7();
	if (!mnt)
		return 0;

	n = FUNC5(path, PATH_MAX, "%s/devices/system/node", mnt);
	if (n == PATH_MAX) {
		FUNC3("sysfs path crossed PATH_MAX(%d) size\n", PATH_MAX);
		return -1;
	}

	dir1 = FUNC2(path);
	if (!dir1)
		return 0;

	/* walk tree and setup map */
	while ((dent1 = FUNC4(dir1)) != NULL) {
		if (dent1->d_type != DT_DIR || FUNC6(dent1->d_name, "node%u", &mem) < 1)
			continue;

		n = FUNC5(buf, PATH_MAX, "%s/%s", path, dent1->d_name);
		if (n == PATH_MAX) {
			FUNC3("sysfs path crossed PATH_MAX(%d) size\n", PATH_MAX);
			continue;
		}

		dir2 = FUNC2(buf);
		if (!dir2)
			continue;
		while ((dent2 = FUNC4(dir2)) != NULL) {
			if (dent2->d_type != DT_LNK || FUNC6(dent2->d_name, "cpu%u", &cpu) < 1)
				continue;
			cpunode_map[cpu] = mem;
		}
		FUNC0(dir2);
	}
	FUNC0(dir1);
	return 0;
}