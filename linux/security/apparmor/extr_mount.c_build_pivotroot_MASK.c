#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct path {int dummy; } ;
struct TYPE_2__ {unsigned int* start; int /*<<< orphan*/  dfa; } ;
struct aa_profile {int /*<<< orphan*/  label; TYPE_1__ policy; int /*<<< orphan*/  disconnected; } ;
struct aa_perms {int allow; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t AA_CLASS_MOUNT ; 
 int AA_MAY_PIVOTROOT ; 
 int EACCES ; 
 struct aa_label* FUNC1 (int) ; 
 int /*<<< orphan*/  OP_PIVOTROOT ; 
 int /*<<< orphan*/  FUNC2 (struct aa_profile*,size_t) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned int,char const*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 struct aa_label* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct path const*,int /*<<< orphan*/ ,char*,char const**,char const**,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct aa_profile*,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct aa_perms*,char const*,int) ; 
 struct aa_perms FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct aa_profile*,struct path const*) ; 
 scalar_t__ FUNC10 (struct aa_profile*) ; 

__attribute__((used)) static struct aa_label *FUNC11(struct aa_profile *profile,
					const struct path *new_path,
					char *new_buffer,
					const struct path *old_path,
					char *old_buffer)
{
	const char *old_name, *new_name = NULL, *info = NULL;
	const char *trans_name = NULL;
	struct aa_perms perms = { };
	unsigned int state;
	int error;

	FUNC0(!profile);
	FUNC0(!new_path);
	FUNC0(!old_path);

	if (FUNC10(profile) ||
	    !FUNC2(profile, AA_CLASS_MOUNT))
		return FUNC5(&profile->label);

	error = FUNC6(old_path, FUNC9(profile, old_path),
			     old_buffer, &old_name, &info,
			     profile->disconnected);
	if (error)
		goto audit;
	error = FUNC6(new_path, FUNC9(profile, new_path),
			     new_buffer, &new_name, &info,
			     profile->disconnected);
	if (error)
		goto audit;

	error = -EACCES;
	state = FUNC3(profile->policy.dfa,
			     profile->policy.start[AA_CLASS_MOUNT],
			     new_name);
	state = FUNC4(profile->policy.dfa, state);
	state = FUNC3(profile->policy.dfa, state, old_name);
	perms = FUNC8(profile->policy.dfa, state);

	if (AA_MAY_PIVOTROOT & perms.allow)
		error = 0;

audit:
	error = FUNC7(profile, OP_PIVOTROOT, new_name, old_name,
			    NULL, trans_name, 0, NULL, AA_MAY_PIVOTROOT,
			    &perms, info, error);
	if (error)
		return FUNC1(error);

	return FUNC5(&profile->label);
}