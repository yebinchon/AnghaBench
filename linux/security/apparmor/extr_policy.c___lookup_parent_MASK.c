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
struct aa_policy {int /*<<< orphan*/  profiles; } ;
struct aa_profile {struct aa_policy base; } ;
struct aa_ns {struct aa_policy base; } ;

/* Variables and functions */
 struct aa_profile* FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC1 (char const*,char*) ; 

__attribute__((used)) static struct aa_policy *FUNC2(struct aa_ns *ns,
					 const char *hname)
{
	struct aa_policy *policy;
	struct aa_profile *profile = NULL;
	char *split;

	policy = &ns->base;

	for (split = FUNC1(hname, "//"); split;) {
		profile = FUNC0(&policy->profiles, hname,
					    split - hname);
		if (!profile)
			return NULL;
		policy = &profile->base;
		hname = split + 2;
		split = FUNC1(hname, "//");
	}
	if (!profile)
		return &ns->base;
	return &profile->base;
}