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
 int PATH_MAX ; 
 int FUNC0 (char*,int*) ; 
 int max_cpu_num ; 
 int max_present_cpu_num ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (char*,int,char*,char const*) ; 
 char* FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	const char *mnt;
	char path[PATH_MAX];
	int ret = -1;

	/* set up default */
	max_cpu_num = 4096;
	max_present_cpu_num = 4096;

	mnt = FUNC3();
	if (!mnt)
		goto out;

	/* get the highest possible cpu number for a sparse allocation */
	ret = FUNC2(path, PATH_MAX, "%s/devices/system/cpu/possible", mnt);
	if (ret == PATH_MAX) {
		FUNC1("sysfs path crossed PATH_MAX(%d) size\n", PATH_MAX);
		goto out;
	}

	ret = FUNC0(path, &max_cpu_num);
	if (ret)
		goto out;

	/* get the highest present cpu number for a sparse allocation */
	ret = FUNC2(path, PATH_MAX, "%s/devices/system/cpu/present", mnt);
	if (ret == PATH_MAX) {
		FUNC1("sysfs path crossed PATH_MAX(%d) size\n", PATH_MAX);
		goto out;
	}

	ret = FUNC0(path, &max_present_cpu_num);

out:
	if (ret)
		FUNC1("Failed to read max cpus, using default of %d\n", max_cpu_num);
}