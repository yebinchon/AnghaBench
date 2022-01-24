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
typedef  scalar_t__ u32 ;
struct path_cond {int /*<<< orphan*/  mode; int /*<<< orphan*/  uid; } ;
struct file {int /*<<< orphan*/  f_path; } ;
struct aa_profile {int dummy; } ;
struct aa_perms {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 int PATH_DELEGATE_DELETED ; 
 int PATH_IS_DIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct aa_label*,struct aa_label*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 TYPE_1__* FUNC3 (struct file*) ; 
 int FUNC4 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct aa_label*,struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,struct aa_profile*,int /*<<< orphan*/ *,char*,scalar_t__,struct path_cond*,int,struct aa_perms*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct aa_label*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(const char *op, struct aa_label *label,
			    struct aa_label *flabel, struct file *file,
			    u32 request, u32 denied)
{
	struct aa_profile *profile;
	struct aa_perms perms = {};
	struct path_cond cond = {
		.uid = FUNC3(file)->i_uid,
		.mode = FUNC3(file)->i_mode
	};
	char *buffer;
	int flags, error;

	/* revalidation due to label out of date. No revocation at this time */
	if (!denied && FUNC1(flabel, label))
		/* TODO: check for revocation on stale profiles */
		return 0;

	flags = PATH_DELEGATE_DELETED | (FUNC0(cond.mode) ? PATH_IS_DIR : 0);
	FUNC6(buffer);

	/* check every profile in task label not in current cache */
	error = FUNC5(flabel, label, profile,
			FUNC7(op, profile, &file->f_path, buffer,
					  request, &cond, flags, &perms));
	if (denied && !error) {
		/*
		 * check every profile in file label that was not tested
		 * in the initial check above.
		 *
		 * TODO: cache full perms so this only happens because of
		 * conditionals
		 * TODO: don't audit here
		 */
		if (label == flabel)
			error = FUNC4(label, profile,
				FUNC7(op, profile, &file->f_path,
						  buffer, request, &cond, flags,
						  &perms));
		else
			error = FUNC5(label, flabel, profile,
				FUNC7(op, profile, &file->f_path,
						  buffer, request, &cond, flags,
						  &perms));
	}
	if (!error)
		FUNC9(FUNC2(file), label, request);

	FUNC8(buffer);

	return error;
}