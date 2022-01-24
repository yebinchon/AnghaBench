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
 int /*<<< orphan*/  cgroup_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct cgroup*) ; 
 scalar_t__ FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct kernfs_node *kn)
{
	struct cgroup *cgrp;

	if (FUNC1(kn) == KERNFS_DIR)
		cgrp = kn->priv;
	else
		cgrp = kn->parent->priv;

	FUNC3(&cgroup_mutex);

	FUNC2(kn);
	FUNC0(cgrp);
}