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
struct path_cond {int dummy; } ;
struct linux_binprm {int /*<<< orphan*/  filename; } ;
struct aa_profile {int /*<<< orphan*/  label; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AA_MAY_ONEXEC ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct aa_label* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int /*<<< orphan*/  OP_CHANGE_ONEXEC ; 
 int /*<<< orphan*/  FUNC2 (struct aa_profile*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct aa_label*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct aa_label*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 struct aa_label* FUNC6 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nullperms ; 
 int /*<<< orphan*/  FUNC7 (struct aa_profile*,struct aa_label*,int,struct linux_binprm const*,char*,struct path_cond*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct aa_profile*,struct linux_binprm const*,char*,struct path_cond*,int*) ; 

__attribute__((used)) static struct aa_label *FUNC9(struct aa_label *label,
				      struct aa_label *onexec, bool stack,
				      const struct linux_binprm *bprm,
				      char *buffer, struct path_cond *cond,
				      bool *unsafe)
{
	struct aa_profile *profile;
	struct aa_label *new;
	int error;

	FUNC0(!label);
	FUNC0(!onexec);
	FUNC0(!bprm);
	FUNC0(!buffer);

	if (!stack) {
		error = FUNC5(label, profile,
				FUNC7(profile, onexec, stack,
					       bprm, buffer, cond, unsafe));
		if (error)
			return FUNC1(error);
		new = FUNC6(label, profile, GFP_ATOMIC,
				FUNC3(onexec),
				FUNC8(profile, bprm, buffer,
						   cond, unsafe));

	} else {
		/* TODO: determine how much we want to loosen this */
		error = FUNC5(label, profile,
				FUNC7(profile, onexec, stack, bprm,
					       buffer, cond, unsafe));
		if (error)
			return FUNC1(error);
		new = FUNC6(label, profile, GFP_ATOMIC,
				FUNC4(&profile->label, onexec,
					       GFP_ATOMIC),
				FUNC8(profile, bprm, buffer,
						   cond, unsafe));
	}

	if (new)
		return new;

	/* TODO: get rid of GLOBAL_ROOT_UID */
	error = FUNC5(label, profile,
			FUNC2(profile, &nullperms, OP_CHANGE_ONEXEC,
				      AA_MAY_ONEXEC, bprm->filename, NULL,
				      onexec, GLOBAL_ROOT_UID,
				      "failed to build target label", -ENOMEM));
	return FUNC1(error);
}