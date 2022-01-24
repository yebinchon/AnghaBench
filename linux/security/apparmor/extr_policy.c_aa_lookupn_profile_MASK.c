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
struct aa_profile {int dummy; } ;
struct aa_ns {int /*<<< orphan*/  unconfined; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 struct aa_profile* FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 struct aa_profile* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_profile*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char const*,char*,size_t) ; 

struct aa_profile *FUNC6(struct aa_ns *ns, const char *hname,
				      size_t n)
{
	struct aa_profile *profile;

	FUNC3();
	do {
		profile = FUNC0(&ns->base, hname, n);
	} while (profile && !FUNC2(profile));
	FUNC4();

	/* the unconfined profile is not in the regular profile list */
	if (!profile && FUNC5(hname, "unconfined", n) == 0)
		profile = FUNC1(ns->unconfined);

	/* refcount released by caller */
	return profile;
}