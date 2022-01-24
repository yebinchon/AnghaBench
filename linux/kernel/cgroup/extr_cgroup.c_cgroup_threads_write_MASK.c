#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct kernfs_open_file {int /*<<< orphan*/  kn; TYPE_3__* file; } ;
struct cgroup {scalar_t__ dom_cgrp; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct TYPE_6__ {TYPE_2__ f_path; } ;
struct TYPE_4__ {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct cgroup*,struct task_struct*,int) ; 
 struct cgroup* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int FUNC5 (struct cgroup*,struct cgroup*,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  cgrp_dfl_root ; 
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (char*) ; 
 struct cgroup* FUNC10 (struct task_struct*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC11(struct kernfs_open_file *of,
				    char *buf, size_t nbytes, loff_t off)
{
	struct cgroup *src_cgrp, *dst_cgrp;
	struct task_struct *task;
	ssize_t ret;

	buf = FUNC9(buf);

	dst_cgrp = FUNC2(of->kn, false);
	if (!dst_cgrp)
		return -ENODEV;

	task = FUNC6(buf, false);
	ret = FUNC0(task);
	if (ret)
		goto out_unlock;

	/* find the source cgroup */
	FUNC7(&css_set_lock);
	src_cgrp = FUNC10(task, &cgrp_dfl_root);
	FUNC8(&css_set_lock);

	/* thread migrations follow the cgroup.procs delegation rule */
	ret = FUNC5(src_cgrp, dst_cgrp,
					    of->file->f_path.dentry->d_sb);
	if (ret)
		goto out_finish;

	/* and must be contained in the same domain */
	ret = -EOPNOTSUPP;
	if (src_cgrp->dom_cgrp != dst_cgrp->dom_cgrp)
		goto out_finish;

	ret = FUNC1(dst_cgrp, task, false);

out_finish:
	FUNC4(task);
out_unlock:
	FUNC3(of->kn);

	return ret ?: nbytes;
}