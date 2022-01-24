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
struct task_struct {int dummy; } ;
struct pids_cgroup {int /*<<< orphan*/  events_file; int /*<<< orphan*/  events_limit; } ;
struct cgroup_subsys_state {int /*<<< orphan*/  cgroup; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pids_cgroup* FUNC2 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  pids_cgrp_id ; 
 int FUNC3 (struct pids_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct cgroup_subsys_state* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct task_struct *task)
{
	struct cgroup_subsys_state *css;
	struct pids_cgroup *pids;
	int err;

	css = FUNC7(current, pids_cgrp_id, true);
	pids = FUNC2(css);
	err = FUNC3(pids, 1);
	if (err) {
		/* Only log the first time events_limit is incremented. */
		if (FUNC0(&pids->events_limit) == 1) {
			FUNC6("cgroup: fork rejected by pids controller in ");
			FUNC5(css->cgroup);
			FUNC4("\n");
		}
		FUNC1(&pids->events_file);
	}
	return err;
}