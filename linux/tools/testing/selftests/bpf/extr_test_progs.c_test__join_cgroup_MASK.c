#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* test; } ;
struct TYPE_3__ {int need_cgroup_cleanup; int test_num; char* test_name; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 TYPE_2__ env ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*,...) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(const char *path)
{
	int fd;

	if (!env.test->need_cgroup_cleanup) {
		if (FUNC3()) {
			FUNC1(stderr,
				"#%d %s: Failed to setup cgroup environment\n",
				env.test->test_num, env.test->test_name);
			return -1;
		}

		env.test->need_cgroup_cleanup = true;
	}

	fd = FUNC0(path);
	if (fd < 0) {
		FUNC1(stderr,
			"#%d %s: Failed to create cgroup '%s' (errno=%d)\n",
			env.test->test_num, env.test->test_name, path, errno);
		return fd;
	}

	if (FUNC2(path)) {
		FUNC1(stderr,
			"#%d %s: Failed to join cgroup '%s' (errno=%d)\n",
			env.test->test_num, env.test->test_name, path, errno);
		return -1;
	}

	return fd;
}