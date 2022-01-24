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
struct nsproxy {struct cgroup_namespace* cgroup_ns; } ;
struct ns_common {int dummy; } ;
struct cgroup_namespace {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup_namespace*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup_namespace*) ; 
 struct cgroup_namespace* FUNC4 (struct ns_common*) ; 

__attribute__((used)) static int FUNC5(struct nsproxy *nsproxy, struct ns_common *ns)
{
	struct cgroup_namespace *cgroup_ns = FUNC4(ns);

	if (!FUNC2(FUNC0(), CAP_SYS_ADMIN) ||
	    !FUNC2(cgroup_ns->user_ns, CAP_SYS_ADMIN))
		return -EPERM;

	/* Don't need to do anything if we are attaching to our own cgroupns. */
	if (cgroup_ns == nsproxy->cgroup_ns)
		return 0;

	FUNC1(cgroup_ns);
	FUNC3(nsproxy->cgroup_ns);
	nsproxy->cgroup_ns = cgroup_ns;

	return 0;
}