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
struct uts_namespace {int /*<<< orphan*/  user_ns; } ;
struct nsproxy {struct uts_namespace* uts_ns; } ;
struct ns_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct uts_namespace*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uts_namespace*) ; 
 struct uts_namespace* FUNC4 (struct ns_common*) ; 

__attribute__((used)) static int FUNC5(struct nsproxy *nsproxy, struct ns_common *new)
{
	struct uts_namespace *ns = FUNC4(new);

	if (!FUNC2(ns->user_ns, CAP_SYS_ADMIN) ||
	    !FUNC2(FUNC0(), CAP_SYS_ADMIN))
		return -EPERM;

	FUNC1(ns);
	FUNC3(nsproxy->uts_ns);
	nsproxy->uts_ns = ns;
	return 0;
}