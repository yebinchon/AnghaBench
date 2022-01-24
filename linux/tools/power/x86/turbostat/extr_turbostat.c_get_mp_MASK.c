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
struct msr_counter {scalar_t__ msr_num; int flags; char* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_BYTES ; 
 int SYSFS_PERCPU ; 
 scalar_t__ FUNC0 (int,scalar_t__,unsigned long long*) ; 
 unsigned long long FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,char*) ; 

int FUNC3(int cpu, struct msr_counter *mp, unsigned long long *counterp)
{
	if (mp->msr_num != 0) {
		if (FUNC0(cpu, mp->msr_num, counterp))
			return -1;
	} else {
		char path[128 + PATH_BYTES];

		if (mp->flags & SYSFS_PERCPU) {
			FUNC2(path, "/sys/devices/system/cpu/cpu%d/%s",
				 cpu, mp->path);

			*counterp = FUNC1(path);
		} else {
			*counterp = FUNC1(mp->path);
		}
	}

	return 0;
}