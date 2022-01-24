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
struct path {int dummy; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AA_MAY_PIVOTROOT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*) ; 
 int /*<<< orphan*/  OP_PIVOTROOT ; 
 int FUNC2 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 
 int FUNC4 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_profile*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct aa_profile*,struct path const*,char*,struct path const*,char*) ; 
 int FUNC7 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 struct aa_label* FUNC8 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  nullperms ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

int FUNC11(struct aa_label *label, const struct path *old_path,
		 const struct path *new_path)
{
	struct aa_profile *profile;
	struct aa_label *target = NULL;
	char *old_buffer = NULL, *new_buffer = NULL, *info = NULL;
	int error;

	FUNC0(!label);
	FUNC0(!old_path);
	FUNC0(!new_path);

	FUNC9(old_buffer, new_buffer);
	target = FUNC8(label, profile, GFP_ATOMIC,
			FUNC6(profile, new_path, new_buffer,
					old_path, old_buffer));
	if (!target) {
		info = "label build failed";
		error = -ENOMEM;
		goto fail;
	} else if (!FUNC1(target)) {
		error = FUNC4(target);
		if (error) {
			/* TODO: audit target */
			FUNC3(target);
			goto out;
		}
	} else
		/* already audited error */
		error = FUNC2(target);
out:
	FUNC10(old_buffer, new_buffer);

	return error;

fail:
	/* TODO: add back in auditing of new_name and old_name */
	error = FUNC7(label, profile,
			FUNC5(profile, OP_PIVOTROOT, NULL /*new_name */,
				    NULL /* old_name */,
				    NULL, NULL,
				    0, NULL, AA_MAY_PIVOTROOT, &nullperms, info,
				    error));
	goto out;
}