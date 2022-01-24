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
struct perf_event_attr {int dummy; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_NPROCESSORS_CONF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct perf_event_attr*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct perf_event_attr *attr,
				  const char *name)
{
	int i, status, nr_cpus = FUNC5(_SC_NPROCESSORS_CONF);
	pid_t pid[nr_cpus];
	int err = 0;

	FUNC4("Test reading %s counters\n", name);

	for (i = 0; i < nr_cpus; i++) {
		pid[i] = FUNC3();
		FUNC0(pid[i] >= 0);
		if (pid[i] == 0) {
			FUNC1(i, attr);
			FUNC2(1);
		}
	}

	for (i = 0; i < nr_cpus; i++) {
		FUNC0(FUNC6(pid[i], &status, 0) == pid[i]);
		err |= status;
	}

	if (err)
		FUNC4("Test: %s FAILED\n", name);
}