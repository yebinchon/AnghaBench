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
struct super_block {int dummy; } ;
struct kernfs_root {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  children; } ;
struct TYPE_4__ {TYPE_1__ self; } ;
struct cgroup_root {TYPE_2__ cgrp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct cgroup_root* FUNC1 (struct kernfs_root*) ; 
 struct cgroup_root cgrp_dfl_root ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 struct kernfs_root* FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb)
{
	struct kernfs_root *kf_root = FUNC3(sb);
	struct cgroup_root *root = FUNC1(kf_root);

	/*
	 * If @root doesn't have any children, start killing it.
	 * This prevents new mounts by disabling percpu_ref_tryget_live().
	 * cgroup_mount() may wait for @root's release.
	 *
	 * And don't kill the default root.
	 */
	if (FUNC4(&root->cgrp.self.children) && root != &cgrp_dfl_root &&
	    !FUNC5(&root->cgrp.self.refcnt))
		FUNC6(&root->cgrp.self.refcnt);
	FUNC0(&root->cgrp);
	FUNC2(sb);
}