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
struct user_namespace {int dummy; } ;
struct ucounts {int dummy; } ;
struct css_set {int dummy; } ;
struct cgroup_namespace {struct css_set* root_cset; struct ucounts* ucounts; int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 unsigned long CLONE_NEWCGROUP ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  EPERM ; 
 struct cgroup_namespace* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cgroup_namespace*) ; 
 struct cgroup_namespace* FUNC3 () ; 
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (struct ucounts*) ; 
 int /*<<< orphan*/  FUNC5 (struct cgroup_namespace*) ; 
 int /*<<< orphan*/  FUNC6 (struct css_set*) ; 
 int /*<<< orphan*/  FUNC7 (struct user_namespace*) ; 
 struct ucounts* FUNC8 (struct user_namespace*) ; 
 int /*<<< orphan*/  FUNC9 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct css_set*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct css_set* FUNC13 (int /*<<< orphan*/ ) ; 

struct cgroup_namespace *FUNC14(unsigned long flags,
					struct user_namespace *user_ns,
					struct cgroup_namespace *old_ns)
{
	struct cgroup_namespace *new_ns;
	struct ucounts *ucounts;
	struct css_set *cset;

	FUNC0(!old_ns);

	if (!(flags & CLONE_NEWCGROUP)) {
		FUNC5(old_ns);
		return old_ns;
	}

	/* Allow only sysadmin to create cgroup namespace. */
	if (!FUNC9(user_ns, CAP_SYS_ADMIN))
		return FUNC1(-EPERM);

	ucounts = FUNC8(user_ns);
	if (!ucounts)
		return FUNC1(-ENOSPC);

	/* It is not safe to take cgroup_mutex here */
	FUNC11(&css_set_lock);
	cset = FUNC13(current);
	FUNC6(cset);
	FUNC12(&css_set_lock);

	new_ns = FUNC3();
	if (FUNC2(new_ns)) {
		FUNC10(cset);
		FUNC4(ucounts);
		return new_ns;
	}

	new_ns->user_ns = FUNC7(user_ns);
	new_ns->ucounts = ucounts;
	new_ns->root_cset = cset;

	return new_ns;
}