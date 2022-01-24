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
typedef  int /*<<< orphan*/  u64 ;
struct cred {int dummy; } ;
struct aa_task_ctx {scalar_t__ nnp; int /*<<< orphan*/  previous; } ;
struct aa_profile {int dummy; } ;
struct aa_perms {int /*<<< orphan*/  kill; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AA_CHANGE_TEST ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  AA_MAY_CHANGEHAT ; 
 int EACCES ; 
 int EPERM ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 scalar_t__ FUNC2 (struct aa_label*) ; 
 int /*<<< orphan*/  OP_CHANGE_HAT ; 
 int FUNC3 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_profile*,struct aa_perms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct aa_label*,int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC5 (struct aa_label*) ; 
 struct aa_label* FUNC6 (struct cred const*) ; 
 struct aa_label* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct aa_label*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct aa_label*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct aa_label*,int /*<<< orphan*/ ) ; 
 struct aa_label* FUNC12 (struct aa_label*,char const**,int,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC13 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 struct cred* FUNC14 () ; 
 int FUNC15 (struct aa_label*,char const**) ; 
 int /*<<< orphan*/  FUNC16 (struct cred const*) ; 
 struct aa_task_ctx* FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct aa_label*) ; 

int FUNC20(const char *hats[], int count, u64 token, int flags)
{
	const struct cred *cred;
	struct aa_task_ctx *ctx = FUNC17(current);
	struct aa_label *label, *previous, *new = NULL, *target = NULL;
	struct aa_profile *profile;
	struct aa_perms perms = {};
	const char *info = NULL;
	int error = 0;

	/* released below */
	cred = FUNC14();
	label = FUNC6(cred);
	previous = FUNC7(ctx->previous);

	/*
	 * Detect no new privs being set, and store the label it
	 * occurred under. Ideally this would happen when nnp
	 * is set but there isn't a good way to do that yet.
	 *
	 * Testing for unconfined must be done before the subset test
	 */
	if (FUNC18(current) && !FUNC19(label) && !ctx->nnp)
		ctx->nnp = FUNC5(label);

	if (FUNC19(label)) {
		info = "unconfined can not change_hat";
		error = -EPERM;
		goto fail;
	}

	if (count) {
		new = FUNC12(label, hats, count, flags);
		FUNC0(!new);
		if (FUNC2(new)) {
			error = FUNC3(new);
			new = NULL;
			/* already audited */
			goto out;
		}

		error = FUNC15(new, &info);
		if (error)
			goto fail;

		/*
		 * no new privs prevents domain transitions that would
		 * reduce restrictions.
		 */
		if (FUNC18(current) && !FUNC19(label) &&
		    !FUNC8(new, ctx->nnp)) {
			/* not an apparmor denial per se, so don't log it */
			FUNC1("no_new_privs - change_hat denied");
			error = -EPERM;
			goto out;
		}

		if (flags & AA_CHANGE_TEST)
			goto out;

		target = new;
		error = FUNC11(new, token);
		if (error == -EACCES)
			/* kill task in case of brute force attacks */
			goto kill;
	} else if (previous && !(flags & AA_CHANGE_TEST)) {
		/*
		 * no new privs prevents domain transitions that would
		 * reduce restrictions.
		 */
		if (FUNC18(current) && !FUNC19(label) &&
		    !FUNC8(previous, ctx->nnp)) {
			/* not an apparmor denial per se, so don't log it */
			FUNC1("no_new_privs - change_hat denied");
			error = -EPERM;
			goto out;
		}

		/* Return to saved label.  Kill task if restore fails
		 * to avoid brute force attacks
		 */
		target = previous;
		error = FUNC10(token);
		if (error) {
			if (error == -EACCES)
				goto kill;
			goto fail;
		}
	} /* else ignore @flags && restores when there is no saved profile */

out:
	FUNC9(new);
	FUNC9(previous);
	FUNC9(label);
	FUNC16(cred);

	return error;

kill:
	info = "failed token match";
	perms.kill = AA_MAY_CHANGEHAT;

fail:
	FUNC13(label, profile,
		FUNC4(profile, &perms, OP_CHANGE_HAT,
			      AA_MAY_CHANGEHAT, NULL, NULL, target,
			      GLOBAL_ROOT_UID, info, error));

	goto out;
}