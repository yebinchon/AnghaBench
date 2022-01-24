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
struct aa_label {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * hname; } ;
struct aa_profile {struct aa_label label; TYPE_1__ base; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  AA_MAY_CHANGEHAT ; 
 scalar_t__ FUNC0 (struct aa_profile*) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPERM ; 
 struct aa_label* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int /*<<< orphan*/  OP_CHANGE_HAT ; 
 scalar_t__ FUNC2 (struct aa_profile*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_profile*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,struct aa_label*,int /*<<< orphan*/ ,char const*,int) ; 
 struct aa_profile* FUNC4 (struct aa_profile*,char const*) ; 
 struct aa_profile* FUNC5 (struct aa_profile*) ; 
 struct aa_profile* FUNC6 (int /*<<< orphan*/ *) ; 
 struct aa_profile* FUNC7 (struct aa_profile*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct aa_profile*) ; 
 int /*<<< orphan*/  nullperms ; 

__attribute__((used)) static struct aa_label *FUNC9(struct aa_profile *profile,
					 const char *name, bool sibling)
{
	struct aa_profile *root, *hat = NULL;
	const char *info = NULL;
	int error = 0;

	if (sibling && FUNC2(profile)) {
		root = FUNC6(&profile->parent);
	} else if (!sibling && !FUNC2(profile)) {
		root = FUNC5(profile);
	} else {
		info = "conflicting target types";
		error = -EPERM;
		goto audit;
	}

	hat = FUNC4(root, name);
	if (!hat) {
		error = -ENOENT;
		if (FUNC0(profile)) {
			hat = FUNC7(profile, true, name,
						  GFP_KERNEL);
			if (!hat) {
				info = "failed null profile create";
				error = -ENOMEM;
			}
		}
	}
	FUNC8(root);

audit:
	FUNC3(profile, &nullperms, OP_CHANGE_HAT, AA_MAY_CHANGEHAT,
		      name, hat ? hat->base.hname : NULL,
		      hat ? &hat->label : NULL, GLOBAL_ROOT_UID, info,
		      error);
	if (!hat || (error && error != -ENOENT))
		return FUNC1(error);
	/* if hat && error - complain mode, already audited and we adjust for
	 * complain mode allow by returning hat->label
	 */
	return &hat->label;
}