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
struct cgroup_namespace {int /*<<< orphan*/  root_cset; } ;
struct cgroup {int /*<<< orphan*/  kn; int /*<<< orphan*/  root; } ;

/* Variables and functions */
 struct cgroup* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 

int FUNC2(struct cgroup *cgrp, char *buf, size_t buflen,
			  struct cgroup_namespace *ns)
{
	struct cgroup *root = FUNC0(ns->root_cset, cgrp->root);

	return FUNC1(cgrp->kn, root->kn, buf, buflen);
}