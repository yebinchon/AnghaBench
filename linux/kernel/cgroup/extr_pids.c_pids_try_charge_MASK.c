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
struct pids_cgroup {scalar_t__ limit; int /*<<< orphan*/  counter; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 struct pids_cgroup* FUNC1 (struct pids_cgroup*) ; 
 int /*<<< orphan*/  FUNC2 (struct pids_cgroup*,int) ; 

__attribute__((used)) static int FUNC3(struct pids_cgroup *pids, int num)
{
	struct pids_cgroup *p, *q;

	for (p = pids; FUNC1(p); p = FUNC1(p)) {
		int64_t new = FUNC0(num, &p->counter);

		/*
		 * Since new is capped to the maximum number of pid_t, if
		 * p->limit is %PIDS_MAX then we know that this test will never
		 * fail.
		 */
		if (new > p->limit)
			goto revert;
	}

	return 0;

revert:
	for (q = pids; q != p; q = FUNC1(q))
		FUNC2(q, num);
	FUNC2(p, num);

	return -EAGAIN;
}