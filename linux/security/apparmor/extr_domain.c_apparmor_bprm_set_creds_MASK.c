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
struct path_cond {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct linux_binprm {int unsafe; int secureexec; int /*<<< orphan*/  file; int /*<<< orphan*/  filename; int /*<<< orphan*/  cred; int /*<<< orphan*/  per_clear; scalar_t__ called_set_creds; } ;
struct aa_task_ctx {scalar_t__ nnp; int /*<<< orphan*/  token; scalar_t__ onexec; } ;
struct aa_profile {int dummy; } ;
struct aa_label {scalar_t__ proxy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DEBUG_ON ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (struct aa_label*) ; 
 int LSM_UNSAFE_NO_NEW_PRIVS ; 
 int LSM_UNSAFE_PTRACE ; 
 int LSM_UNSAFE_SHARE ; 
 int /*<<< orphan*/  MAY_EXEC ; 
 int /*<<< orphan*/  OP_EXEC ; 
 int /*<<< orphan*/  PER_CLEAR_ON_SETID ; 
 int FUNC2 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_profile*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct aa_label*,int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC4 (struct aa_label*) ; 
 struct aa_label* FUNC5 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC6 (struct aa_label*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct aa_label*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct aa_label*) ; 
 struct aa_label* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 struct aa_label* FUNC13 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 struct aa_label* FUNC15 (struct aa_label*,scalar_t__,int /*<<< orphan*/ ,struct linux_binprm*,char*,struct path_cond*,int*) ; 
 int FUNC16 (struct aa_label*,char const**) ; 
 int /*<<< orphan*/  nullperms ; 
 int /*<<< orphan*/  FUNC17 (struct aa_profile*,struct linux_binprm*,char*,struct path_cond*,int*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct aa_label*) ; 
 struct aa_task_ctx* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct aa_label*) ; 

int FUNC22(struct linux_binprm *bprm)
{
	struct aa_task_ctx *ctx;
	struct aa_label *label, *new = NULL;
	struct aa_profile *profile;
	char *buffer = NULL;
	const char *info = NULL;
	int error = 0;
	bool unsafe = false;
	struct path_cond cond = {
		FUNC11(bprm->file)->i_uid,
		FUNC11(bprm->file)->i_mode
	};

	if (bprm->called_set_creds)
		return 0;

	ctx = FUNC20(current);
	FUNC0(!FUNC9(bprm->cred));
	FUNC0(!ctx);

	label = FUNC5(FUNC9(bprm->cred));

	/*
	 * Detect no new privs being set, and store the label it
	 * occurred under. Ideally this would happen when nnp
	 * is set but there isn't a good way to do that yet.
	 *
	 * Testing for unconfined must be done before the subset test
	 */
	if ((bprm->unsafe & LSM_UNSAFE_NO_NEW_PRIVS) && !FUNC21(label) &&
	    !ctx->nnp)
		ctx->nnp = FUNC4(label);

	/* buffer freed below, name is pointer into buffer */
	FUNC14(buffer);
	/* Test for onexec first as onexec override other x transitions. */
	if (ctx->onexec)
		new = FUNC15(label, ctx->onexec, ctx->token,
				    bprm, buffer, &cond, &unsafe);
	else
		new = FUNC13(label, profile, GFP_ATOMIC,
				FUNC17(profile, bprm, buffer,
						   &cond, &unsafe));

	FUNC0(!new);
	if (FUNC1(new)) {
		error = FUNC2(new);
		goto done;
	} else if (!new) {
		error = -ENOMEM;
		goto done;
	}

	/* Policy has specified a domain transitions. If no_new_privs and
	 * confined ensure the transition is to confinement that is subset
	 * of the confinement when the task entered no new privs.
	 *
	 * NOTE: Domain transitions from unconfined and to stacked
	 * subsets are allowed even when no_new_privs is set because this
	 * aways results in a further reduction of permissions.
	 */
	if ((bprm->unsafe & LSM_UNSAFE_NO_NEW_PRIVS) &&
	    !FUNC21(label) && !FUNC6(new, ctx->nnp)) {
		error = -EPERM;
		info = "no new privs";
		goto audit;
	}

	if (bprm->unsafe & LSM_UNSAFE_SHARE) {
		/* FIXME: currently don't mediate shared state */
		;
	}

	if (bprm->unsafe & (LSM_UNSAFE_PTRACE)) {
		/* TODO: test needs to be profile of label to new */
		error = FUNC16(new, &info);
		if (error)
			goto audit;
	}

	if (unsafe) {
		if (DEBUG_ON) {
			FUNC10("scrubbing environment variables for %s "
				   "label=", bprm->filename);
			FUNC7(new, GFP_ATOMIC);
			FUNC10("\n");
		}
		bprm->secureexec = 1;
	}

	if (label->proxy != new->proxy) {
		/* when transitioning clear unsafe personality bits */
		if (DEBUG_ON) {
			FUNC10("apparmor: clearing unsafe personality "
				   "bits. %s label=", bprm->filename);
			FUNC7(new, GFP_ATOMIC);
			FUNC10("\n");
		}
		bprm->per_clear |= PER_CLEAR_ON_SETID;
	}
	FUNC8(FUNC9(bprm->cred));
	/* transfer reference, released when cred is freed */
	FUNC19(bprm->cred, new);

done:
	FUNC8(label);
	FUNC18(buffer);

	return error;

audit:
	error = FUNC12(label, profile,
			FUNC3(profile, &nullperms, OP_EXEC, MAY_EXEC,
				      bprm->filename, NULL, new,
				      FUNC11(bprm->file)->i_uid, info,
				      error));
	FUNC8(new);
	goto done;
}