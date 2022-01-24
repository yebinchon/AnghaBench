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
typedef  int /*<<< orphan*/  u32 ;
struct aa_task_ctx {scalar_t__ nnp; } ;
struct aa_label {int dummy; } ;
struct aa_profile {struct aa_label label; } ;
struct aa_perms {scalar_t__ allow; } ;

/* Variables and functions */
 int AA_CHANGE_ONEXEC ; 
 int AA_CHANGE_STACK ; 
 int AA_CHANGE_TEST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  AA_MAY_CHANGE_PROFILE ; 
 int /*<<< orphan*/  AA_MAY_ONEXEC ; 
 int /*<<< orphan*/  FUNC1 (struct aa_profile*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 scalar_t__ FUNC2 (struct aa_label*) ; 
 scalar_t__ FUNC3 (struct aa_label*) ; 
 char* OP_CHANGE_ONEXEC ; 
 char* OP_CHANGE_PROFILE ; 
 char* OP_STACK ; 
 char* OP_STACK_ONEXEC ; 
 int FUNC4 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_profile*,struct aa_perms*,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,struct aa_label*,int /*<<< orphan*/ ,char const*,int) ; 
 struct aa_label* FUNC6 () ; 
 scalar_t__ FUNC7 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC8 (struct aa_label*,scalar_t__) ; 
 struct aa_label* FUNC9 (struct aa_label*,struct aa_label*,int /*<<< orphan*/ ) ; 
 struct aa_label* FUNC10 (struct aa_label*,char const*,int /*<<< orphan*/ ,int,int) ; 
 struct aa_profile* FUNC11 (struct aa_profile*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct aa_label*) ; 
 int FUNC13 (struct aa_label*) ; 
 int FUNC14 (struct aa_label*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,struct aa_profile*,struct aa_label*,int,int /*<<< orphan*/ ,struct aa_perms*) ; 
 int /*<<< orphan*/  current ; 
 int FUNC16 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 struct aa_label* FUNC17 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct aa_profile* FUNC18 (struct aa_label*) ; 
 int FUNC19 (struct aa_label*,char const**) ; 
 struct aa_task_ctx* FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct aa_label*) ; 

int FUNC23(const char *fqname, int flags)
{
	struct aa_label *label, *new = NULL, *target = NULL;
	struct aa_profile *profile;
	struct aa_perms perms = {};
	const char *info = NULL;
	const char *auditname = fqname;		/* retain leading & if stack */
	bool stack = flags & AA_CHANGE_STACK;
	struct aa_task_ctx *ctx = FUNC20(current);
	int error = 0;
	char *op;
	u32 request;

	label = FUNC6();

	/*
	 * Detect no new privs being set, and store the label it
	 * occurred under. Ideally this would happen when nnp
	 * is set but there isn't a good way to do that yet.
	 *
	 * Testing for unconfined must be done before the subset test
	 */
	if (FUNC21(current) && !FUNC22(label) && !ctx->nnp)
		ctx->nnp = FUNC7(label);

	if (!fqname || !*fqname) {
		FUNC0("no profile name");
		return -EINVAL;
	}

	if (flags & AA_CHANGE_ONEXEC) {
		request = AA_MAY_ONEXEC;
		if (stack)
			op = OP_STACK_ONEXEC;
		else
			op = OP_CHANGE_ONEXEC;
	} else {
		request = AA_MAY_CHANGE_PROFILE;
		if (stack)
			op = OP_STACK;
		else
			op = OP_CHANGE_PROFILE;
	}

	label = FUNC6();

	if (*fqname == '&') {
		stack = true;
		/* don't have label_parse() do stacking */
		fqname++;
	}
	target = FUNC10(label, fqname, GFP_KERNEL, true, false);
	if (FUNC2(target)) {
		struct aa_profile *tprofile;

		info = "label not found";
		error = FUNC4(target);
		target = NULL;
		/*
		 * TODO: fixme using labels_profile is not right - do profile
		 * per complain profile
		 */
		if ((flags & AA_CHANGE_TEST) ||
		    !FUNC1(FUNC18(label)))
			goto audit;
		/* released below */
		tprofile = FUNC11(FUNC18(label), false,
					       fqname, GFP_KERNEL);
		if (!tprofile) {
			info = "failed null profile create";
			error = -ENOMEM;
			goto audit;
		}
		target = &tprofile->label;
		goto check;
	}

	/*
	 * self directed transitions only apply to current policy ns
	 * TODO: currently requiring perms for stacking and straight change
	 *       stacking doesn't strictly need this. Determine how much
	 *       we want to loosen this restriction for stacking
	 *
	 * if (!stack) {
	 */
	error = FUNC16(label, profile,
			FUNC15(op, auditname,
						     profile, target, stack,
						     request, &perms));
	if (error)
		/* auditing done in change_profile_perms_wrapper */
		goto out;

	/* } */

check:
	/* check if tracing task is allowed to trace target domain */
	error = FUNC19(target, &info);
	if (error && !FUNC16(label, profile,
					FUNC1(profile)))
		goto audit;

	/* TODO: add permission check to allow this
	 * if ((flags & AA_CHANGE_ONEXEC) && !current_is_single_threaded()) {
	 *      info = "not a single threaded task";
	 *      error = -EACCES;
	 *      goto audit;
	 * }
	 */
	if (flags & AA_CHANGE_TEST)
		goto out;

	/* stacking is always a subset, so only check the nonstack case */
	if (!stack) {
		new = FUNC17(label, profile, GFP_KERNEL,
					   FUNC7(target),
					   FUNC7(&profile->label));
		/*
		 * no new privs prevents domain transitions that would
		 * reduce restrictions.
		 */
		if (FUNC21(current) && !FUNC22(label) &&
		    !FUNC8(new, ctx->nnp)) {
			/* not an apparmor denial per se, so don't log it */
			FUNC0("no_new_privs - change_hat denied");
			error = -EPERM;
			goto out;
		}
	}

	if (!(flags & AA_CHANGE_ONEXEC)) {
		/* only transition profiles in the current ns */
		if (stack)
			new = FUNC9(label, target, GFP_KERNEL);
		if (FUNC3(new)) {
			info = "failed to build target label";
			if (!new)
				error = -ENOMEM;
			else
				error = FUNC4(new);
			new = NULL;
			perms.allow = 0;
			goto audit;
		}
		error = FUNC13(new);
	} else {
		if (new) {
			FUNC12(new);
			new = NULL;
		}

		/* full transition will be built in exec path */
		error = FUNC14(target, stack);
	}

audit:
	error = FUNC16(label, profile,
			FUNC5(profile, &perms, op, request, auditname,
				      NULL, new ? new : target,
				      GLOBAL_ROOT_UID, info, error));

out:
	FUNC12(new);
	FUNC12(target);
	FUNC12(label);

	return error;
}