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
struct nsproxy {int /*<<< orphan*/  ipc_ns; } ;
struct ns_common {int dummy; } ;
struct ipc_namespace {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EPERM ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ipc_namespace* FUNC5 (struct ns_common*) ; 

__attribute__((used)) static int FUNC6(struct nsproxy *nsproxy, struct ns_common *new)
{
	struct ipc_namespace *ns = FUNC5(new);
	if (!FUNC3(ns->user_ns, CAP_SYS_ADMIN) ||
	    !FUNC3(FUNC0(), CAP_SYS_ADMIN))
		return -EPERM;

	/* Ditch state from the old ipc namespace */
	FUNC1(current);
	FUNC4(nsproxy->ipc_ns);
	nsproxy->ipc_ns = FUNC2(ns);
	return 0;
}