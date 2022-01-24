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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ EINVAL ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(pid_t pid, cpu_set_t *maskp)
{
	int i, cpu = -1, nrcpus = 1024;
realloc:
	FUNC2(maskp);

	if (FUNC4(pid, sizeof(*maskp), maskp) == -1) {
		if (errno == EINVAL && nrcpus < (1024 << 8)) {
			nrcpus = nrcpus << 2;
			goto realloc;
		}
		FUNC3("sched_getaffinity");
			return -1;
	}

	for (i = 0; i < nrcpus; i++) {
		if (FUNC1(i, maskp)) {
			if (cpu == -1)
				cpu = i;
			else
				FUNC0(i, maskp);
		}
	}

	return cpu;
}