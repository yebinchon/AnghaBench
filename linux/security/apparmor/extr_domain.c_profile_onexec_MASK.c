#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct path_cond {int /*<<< orphan*/  uid; } ;
struct linux_binprm {char* filename; TYPE_1__* file; } ;
struct TYPE_6__ {unsigned int start; int /*<<< orphan*/  dfa; } ;
struct TYPE_5__ {int flags; } ;
struct aa_profile {TYPE_3__ file; TYPE_2__ label; int /*<<< orphan*/  disconnected; int /*<<< orphan*/  path_flags; } ;
struct aa_perms {int allow; int xindex; } ;
struct aa_label {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int AA_MAY_ONEXEC ; 
 int AA_X_UNSAFE ; 
 scalar_t__ DEBUG_ON ; 
 int EACCES ; 
 int FLAG_IX_ON_NAME_ERROR ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  OP_EXEC ; 
 int FUNC2 (struct aa_profile*,struct aa_perms*,int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ *,struct aa_label*,int /*<<< orphan*/ ,char const*,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_label*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const**,char const**,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,unsigned int,char const*,struct path_cond*,struct aa_perms*) ; 
 int FUNC7 (struct aa_profile*,struct aa_label*,int,int,unsigned int,struct aa_perms*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (struct aa_profile*) ; 

__attribute__((used)) static int FUNC10(struct aa_profile *profile, struct aa_label *onexec,
			  bool stack, const struct linux_binprm *bprm,
			  char *buffer, struct path_cond *cond,
			  bool *secure_exec)
{
	unsigned int state = profile->file.start;
	struct aa_perms perms = {};
	const char *xname = NULL, *info = "change_profile onexec";
	int error = -EACCES;

	FUNC0(!profile);
	FUNC0(!onexec);
	FUNC0(!bprm);
	FUNC0(!buffer);

	if (FUNC9(profile)) {
		/* change_profile on exec already granted */
		/*
		 * NOTE: Domain transitions from unconfined are allowed
		 * even when no_new_privs is set because this aways results
		 * in a further reduction of permissions.
		 */
		return 0;
	}

	error = FUNC5(&bprm->file->f_path, profile->path_flags, buffer,
			     &xname, &info, profile->disconnected);
	if (error) {
		if (FUNC9(profile) ||
		    (profile->label.flags & FLAG_IX_ON_NAME_ERROR)) {
			FUNC1("name lookup ix on error");
			error = 0;
		}
		xname = bprm->filename;
		goto audit;
	}

	/* find exec permissions for name */
	state = FUNC6(profile->file.dfa, state, xname, cond, &perms);
	if (!(perms.allow & AA_MAY_ONEXEC)) {
		info = "no change_onexec valid for executable";
		goto audit;
	}
	/* test if this exec can be paired with change_profile onexec.
	 * onexec permission is linked to exec with a standard pairing
	 * exec\0change_profile
	 */
	state = FUNC3(profile->file.dfa, state);
	error = FUNC7(profile, onexec, stack, AA_MAY_ONEXEC,
				     state, &perms);
	if (error) {
		perms.allow &= ~AA_MAY_ONEXEC;
		goto audit;
	}

	if (!(perms.xindex & AA_X_UNSAFE)) {
		if (DEBUG_ON) {
			FUNC8("apparmor: scrubbing environment "
				   "variables for %s label=", xname);
			FUNC4(onexec, GFP_ATOMIC);
			FUNC8("\n");
		}
		*secure_exec = true;
	}

audit:
	return FUNC2(profile, &perms, OP_EXEC, AA_MAY_ONEXEC, xname,
			     NULL, onexec, cond->uid, info, error);
}