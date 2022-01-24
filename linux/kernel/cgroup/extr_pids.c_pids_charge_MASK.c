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
struct pids_cgroup {int /*<<< orphan*/  counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 struct pids_cgroup* FUNC1 (struct pids_cgroup*) ; 

__attribute__((used)) static void FUNC2(struct pids_cgroup *pids, int num)
{
	struct pids_cgroup *p;

	for (p = pids; FUNC1(p); p = FUNC1(p))
		FUNC0(num, &p->counter);
}