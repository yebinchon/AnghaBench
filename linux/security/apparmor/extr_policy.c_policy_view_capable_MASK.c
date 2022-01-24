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
struct user_namespace {scalar_t__ level; } ;
struct aa_ns {scalar_t__ level; } ;

/* Variables and functions */
 struct aa_ns* FUNC0 () ; 
 scalar_t__ FUNC1 (struct aa_ns*,struct aa_ns*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_ns*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct user_namespace* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct user_namespace init_user_ns ; 
 int /*<<< orphan*/  FUNC6 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ unprivileged_userns_apparmor_policy ; 

bool FUNC9(struct aa_ns *ns)
{
	struct user_namespace *user_ns = FUNC4();
	struct aa_ns *view_ns = FUNC0();
	bool root_in_user_ns = FUNC8(FUNC3(), FUNC7(user_ns, 0)) ||
			       FUNC5(FUNC6(user_ns, 0));
	bool response = false;
	if (!ns)
		ns = view_ns;

	if (root_in_user_ns && FUNC1(view_ns, ns, true) &&
	    (user_ns == &init_user_ns ||
	     (unprivileged_userns_apparmor_policy != 0 &&
	      user_ns->level == view_ns->level)))
		response = true;
	FUNC2(view_ns);

	return response;
}