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
struct seq_file {int dummy; } ;
struct cgroup {TYPE_1__* root; } ;
struct TYPE_4__ {struct cgroup* cgroup; } ;
struct TYPE_3__ {int /*<<< orphan*/  release_agent_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  release_agent_path_lock ; 
 TYPE_2__* FUNC0 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct seq_file *seq, void *v)
{
	struct cgroup *cgrp = FUNC0(seq)->cgroup;

	FUNC3(&release_agent_path_lock);
	FUNC2(seq, cgrp->root->release_agent_path);
	FUNC4(&release_agent_path_lock);
	FUNC1(seq, '\n');
	return 0;
}