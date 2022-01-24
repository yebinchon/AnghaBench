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
 int /*<<< orphan*/  CGROUP_MOUNT_PATH ; 
 int FTW_DEPTH ; 
 int FTW_MOUNT ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  WALK_FD_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nftwfunc ; 

void FUNC3(void)
{
	char cgroup_workdir[PATH_MAX + 1];

	FUNC0(cgroup_workdir, "");
	FUNC1(CGROUP_MOUNT_PATH);
	FUNC2(cgroup_workdir, nftwfunc, WALK_FD_LIMIT, FTW_DEPTH | FTW_MOUNT);
}