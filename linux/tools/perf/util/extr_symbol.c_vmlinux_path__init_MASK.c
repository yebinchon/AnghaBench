#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct utsname {char* release; } ;
struct perf_env {char* os_release; } ;
typedef  int /*<<< orphan*/  bf ;
struct TYPE_2__ {scalar_t__* symfs; } ;

/* Variables and functions */
 unsigned int FUNC0 (char**) ; 
 int PATH_MAX ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 TYPE_1__ symbol_conf ; 
 scalar_t__ FUNC3 (struct utsname*) ; 
 int /*<<< orphan*/ * vmlinux_path ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char** vmlinux_paths ; 
 char** vmlinux_paths_upd ; 

__attribute__((used)) static int FUNC6(struct perf_env *env)
{
	struct utsname uts;
	char bf[PATH_MAX];
	char *kernel_version;
	unsigned int i;

	vmlinux_path = FUNC1(sizeof(char *) * (FUNC0(vmlinux_paths) +
			      FUNC0(vmlinux_paths_upd)));
	if (vmlinux_path == NULL)
		return -1;

	for (i = 0; i < FUNC0(vmlinux_paths); i++)
		if (FUNC4(vmlinux_paths[i]) < 0)
			goto out_fail;

	/* only try kernel version if no symfs was given */
	if (symbol_conf.symfs[0] != 0)
		return 0;

	if (env) {
		kernel_version = env->os_release;
	} else {
		if (FUNC3(&uts) < 0)
			goto out_fail;

		kernel_version = uts.release;
	}

	for (i = 0; i < FUNC0(vmlinux_paths_upd); i++) {
		FUNC2(bf, sizeof(bf), vmlinux_paths_upd[i], kernel_version);
		if (FUNC4(bf) < 0)
			goto out_fail;
	}

	return 0;

out_fail:
	FUNC5();
	return -1;
}