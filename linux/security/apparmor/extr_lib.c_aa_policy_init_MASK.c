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
struct aa_policy {char* hname; int /*<<< orphan*/  profiles; int /*<<< orphan*/  list; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

bool FUNC6(struct aa_policy *policy, const char *prefix,
		    const char *name, gfp_t gfp)
{
	char *hname;

	/* freed by policy_free */
	if (prefix) {
		hname = FUNC1(FUNC5(prefix) + FUNC5(name) + 3, gfp);
		if (hname)
			FUNC3(hname, "%s//%s", prefix, name);
	} else {
		hname = FUNC1(FUNC5(name) + 1, gfp);
		if (hname)
			FUNC4(hname, name);
	}
	if (!hname)
		return false;
	policy->hname = hname;
	/* base.name is a substring of fqname */
	policy->name = FUNC2(policy->hname);
	FUNC0(&policy->list);
	FUNC0(&policy->profiles);

	return true;
}