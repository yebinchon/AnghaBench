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
struct task_struct {struct nsproxy* nsproxy; } ;
struct nsproxy {struct cgroup_namespace* cgroup_ns; } ;
struct ns_common {int dummy; } ;
struct cgroup_namespace {struct ns_common ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgroup_namespace*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

__attribute__((used)) static struct ns_common *FUNC3(struct task_struct *task)
{
	struct cgroup_namespace *ns = NULL;
	struct nsproxy *nsproxy;

	FUNC1(task);
	nsproxy = task->nsproxy;
	if (nsproxy) {
		ns = nsproxy->cgroup_ns;
		FUNC0(ns);
	}
	FUNC2(task);

	return ns ? &ns->ns : NULL;
}