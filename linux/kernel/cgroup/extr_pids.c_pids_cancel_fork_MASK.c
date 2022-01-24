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
struct pids_cgroup {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;

/* Variables and functions */
 struct pids_cgroup* FUNC0 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  pids_cgrp_id ; 
 int /*<<< orphan*/  FUNC1 (struct pids_cgroup*,int) ; 
 struct cgroup_subsys_state* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct task_struct *task)
{
	struct cgroup_subsys_state *css;
	struct pids_cgroup *pids;

	css = FUNC2(current, pids_cgrp_id, true);
	pids = FUNC0(css);
	FUNC1(pids, 1);
}