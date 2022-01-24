#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct path_cond {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * start; struct aa_dfa* dfa; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; struct aa_dfa* dfa; } ;
struct aa_profile {TYPE_2__ policy; TYPE_1__ file; } ;
struct aa_perms {int dummy; } ;
struct aa_dfa {int dummy; } ;

/* Variables and functions */
 char const AA_CLASS_FILE ; 
 int /*<<< orphan*/  FUNC0 (struct aa_profile*,char const) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_profile*,struct aa_perms*) ; 
 struct aa_perms FUNC2 (struct aa_dfa*,unsigned int,struct path_cond*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_dfa*,unsigned int,struct aa_perms*) ; 
 unsigned int FUNC4 (struct aa_dfa*,int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_perms*,struct aa_perms*) ; 
 scalar_t__ FUNC6 (struct aa_profile*) ; 

__attribute__((used)) static void FUNC7(struct aa_profile *profile, struct aa_perms *perms,
			     const char *match_str, size_t match_len)
{
	struct aa_perms tmp = { };
	struct aa_dfa *dfa;
	unsigned int state = 0;

	if (FUNC6(profile))
		return;
	if (profile->file.dfa && *match_str == AA_CLASS_FILE) {
		dfa = profile->file.dfa;
		state = FUNC4(dfa, profile->file.start,
					 match_str + 1, match_len - 1);
		if (state) {
			struct path_cond cond = { };

			tmp = FUNC2(dfa, state, &cond);
		}
	} else if (profile->policy.dfa) {
		if (!FUNC0(profile, *match_str))
			return;	/* no change to current perms */
		dfa = profile->policy.dfa;
		state = FUNC4(dfa, profile->policy.start[0],
					 match_str, match_len);
		if (state)
			FUNC3(dfa, state, &tmp);
	}
	FUNC1(profile, &tmp);
	FUNC5(perms, &tmp);
}