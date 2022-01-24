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
struct kernfs_node {TYPE_1__* parent; struct cgroup* priv; } ;
struct cgroup {int dummy; } ;
struct TYPE_2__ {struct cgroup* priv; } ;

/* Variables and functions */
 scalar_t__ KERNFS_DIR ; 
 int /*<<< orphan*/  FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC4 (struct kernfs_node*) ; 
 scalar_t__ FUNC5 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct cgroup *FUNC7(struct kernfs_node *kn, bool drain_offline)
{
	struct cgroup *cgrp;

	if (FUNC5(kn) == KERNFS_DIR)
		cgrp = kn->priv;
	else
		cgrp = kn->parent->priv;

	/*
	 * We're gonna grab cgroup_mutex which nests outside kernfs
	 * active_ref.  cgroup liveliness check alone provides enough
	 * protection against removal.  Ensure @cgrp stays accessible and
	 * break the active_ref protection.
	 */
	if (!FUNC3(cgrp))
		return NULL;
	FUNC4(kn);

	if (drain_offline)
		FUNC2(cgrp);
	else
		FUNC6(&cgroup_mutex);

	if (!FUNC0(cgrp))
		return cgrp;

	FUNC1(kn);
	return NULL;
}