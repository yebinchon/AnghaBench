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
struct kernfs_node {struct cgroup* priv; } ;
struct cgroup {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  kn; } ;
struct TYPE_4__ {TYPE_1__ cgrp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOTDIR ; 
 struct cgroup* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ KERNFS_DIR ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup*) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 TYPE_2__ cgrp_dfl_root ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 
 scalar_t__ FUNC3 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct cgroup *FUNC7(const char *path)
{
	struct kernfs_node *kn;
	struct cgroup *cgrp;

	FUNC5(&cgroup_mutex);

	kn = FUNC4(cgrp_dfl_root.cgrp.kn, path);
	if (kn) {
		if (FUNC3(kn) == KERNFS_DIR) {
			cgrp = kn->priv;
			FUNC1(cgrp);
		} else {
			cgrp = FUNC0(-ENOTDIR);
		}
		FUNC2(kn);
	} else {
		cgrp = FUNC0(-ENOENT);
	}

	FUNC6(&cgroup_mutex);
	return cgrp;
}