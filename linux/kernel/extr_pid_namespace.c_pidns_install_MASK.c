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
struct pid_namespace {scalar_t__ level; struct pid_namespace* parent; int /*<<< orphan*/  user_ns; } ;
struct nsproxy {int /*<<< orphan*/  pid_ns_for_children; } ;
struct ns_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct pid_namespace* FUNC4 (int /*<<< orphan*/ ) ; 
 struct pid_namespace* FUNC5 (struct ns_common*) ; 

__attribute__((used)) static int FUNC6(struct nsproxy *nsproxy, struct ns_common *ns)
{
	struct pid_namespace *active = FUNC4(current);
	struct pid_namespace *ancestor, *new = FUNC5(ns);

	if (!FUNC2(new->user_ns, CAP_SYS_ADMIN) ||
	    !FUNC2(FUNC0(), CAP_SYS_ADMIN))
		return -EPERM;

	/*
	 * Only allow entering the current active pid namespace
	 * or a child of the current active pid namespace.
	 *
	 * This is required for fork to return a usable pid value and
	 * this maintains the property that processes and their
	 * children can not escape their current pid namespace.
	 */
	if (new->level < active->level)
		return -EINVAL;

	ancestor = new;
	while (ancestor->level > active->level)
		ancestor = ancestor->parent;
	if (ancestor != active)
		return -EINVAL;

	FUNC3(nsproxy->pid_ns_for_children);
	nsproxy->pid_ns_for_children = FUNC1(new);
	return 0;
}