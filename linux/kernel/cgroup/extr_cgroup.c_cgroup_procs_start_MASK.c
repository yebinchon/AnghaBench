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
struct seq_file {int dummy; } ;
struct cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {struct cgroup* cgroup; } ;

/* Variables and functions */
 int CSS_TASK_ITER_PROCS ; 
 int CSS_TASK_ITER_THREADED ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct seq_file*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct cgroup*) ; 
 TYPE_1__* FUNC3 (struct seq_file*) ; 

__attribute__((used)) static void *FUNC4(struct seq_file *s, loff_t *pos)
{
	struct cgroup *cgrp = FUNC3(s)->cgroup;

	/*
	 * All processes of a threaded subtree belong to the domain cgroup
	 * of the subtree.  Only threads can be distributed across the
	 * subtree.  Reject reads on cgroup.procs in the subtree proper.
	 * They're always empty anyway.
	 */
	if (FUNC2(cgrp))
		return FUNC0(-EOPNOTSUPP);

	return FUNC1(s, pos, CSS_TASK_ITER_PROCS |
					    CSS_TASK_ITER_THREADED);
}