#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct linux_binprm {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  profiles; } ;
struct TYPE_5__ {char** table; } ;
struct TYPE_6__ {TYPE_1__ trans; } ;
struct aa_profile {struct aa_ns* ns; int /*<<< orphan*/  label; TYPE_3__ base; TYPE_2__ file; } ;
struct TYPE_8__ {int /*<<< orphan*/  profiles; } ;
struct aa_ns {TYPE_4__ base; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int AA_X_CHILD ; 
 int AA_X_INDEX_MASK ; 
 int AA_X_INHERIT ; 
#define  AA_X_NAME 130 
#define  AA_X_NONE 129 
#define  AA_X_TABLE 128 
 int AA_X_TYPE_MASK ; 
 int AA_X_UNCONFINED ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct aa_label*) ; 
 struct aa_label* FUNC1 (int /*<<< orphan*/ *) ; 
 struct aa_label* FUNC2 (struct aa_label*,char const*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 
 struct aa_label* FUNC4 (struct linux_binprm const*,struct aa_ns*,int /*<<< orphan*/ *,char const*,char const**) ; 
 int /*<<< orphan*/ * FUNC5 (struct aa_ns*) ; 
 struct aa_label* FUNC6 (struct aa_profile*,int,char const**) ; 

__attribute__((used)) static struct aa_label *FUNC7(struct aa_profile *profile,
				   const struct linux_binprm *bprm,
				   const char *name, u32 xindex,
				   const char **lookupname,
				   const char **info)
{
	struct aa_label *new = NULL;
	struct aa_ns *ns = profile->ns;
	u32 xtype = xindex & AA_X_TYPE_MASK;
	const char *stack = NULL;

	switch (xtype) {
	case AA_X_NONE:
		/* fail exec unless ix || ux fallback - handled by caller */
		*lookupname = NULL;
		break;
	case AA_X_TABLE:
		/* TODO: fix when perm mapping done at unload */
		stack = profile->file.trans.table[xindex & AA_X_INDEX_MASK];
		if (*stack != '&') {
			/* released by caller */
			new = FUNC6(profile, xindex, lookupname);
			stack = NULL;
			break;
		}
		/* fall through - to X_NAME */
	case AA_X_NAME:
		if (xindex & AA_X_CHILD)
			/* released by caller */
			new = FUNC4(bprm, ns, &profile->base.profiles,
					  name, info);
		else
			/* released by caller */
			new = FUNC4(bprm, ns, &ns->base.profiles,
					  name, info);
		*lookupname = name;
		break;
	}

	if (!new) {
		if (xindex & AA_X_INHERIT) {
			/* (p|c|n)ix - don't change profile but do
			 * use the newest version
			 */
			*info = "ix fallback";
			/* no profile && no error */
			new = FUNC1(&profile->label);
		} else if (xindex & AA_X_UNCONFINED) {
			new = FUNC1(FUNC5(profile->ns));
			*info = "ux fallback";
		}
	}

	if (new && stack) {
		/* base the stack on post domain transition */
		struct aa_label *base = new;

		new = FUNC2(base, stack, GFP_ATOMIC, true, false);
		if (FUNC0(new))
			new = NULL;
		FUNC3(base);
	}

	/* released by caller */
	return new;
}