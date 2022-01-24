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
struct seq_file {struct kernfs_open_file* private; } ;
struct kernfs_open_file {struct css_task_iter* priv; } ;
struct css_task_iter {int dummy; } ;
struct cgroup {int /*<<< orphan*/  self; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {struct cgroup* cgroup; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct seq_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct css_task_iter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int,struct css_task_iter*) ; 
 struct css_task_iter* FUNC5 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct seq_file*) ; 

__attribute__((used)) static void *FUNC7(struct seq_file *s, loff_t *pos,
				  unsigned int iter_flags)
{
	struct kernfs_open_file *of = s->private;
	struct cgroup *cgrp = FUNC6(s)->cgroup;
	struct css_task_iter *it = of->priv;

	/*
	 * When a seq_file is seeked, it's always traversed sequentially
	 * from position 0, so we can simply keep iterating on !0 *pos.
	 */
	if (!it) {
		if (FUNC1((*pos)++))
			return FUNC0(-EINVAL);

		it = FUNC5(sizeof(*it), GFP_KERNEL);
		if (!it)
			return FUNC0(-ENOMEM);
		of->priv = it;
		FUNC4(&cgrp->self, iter_flags, it);
	} else if (!(*pos)++) {
		FUNC3(it);
		FUNC4(&cgrp->self, iter_flags, it);
	}

	return FUNC2(s, NULL, NULL);
}