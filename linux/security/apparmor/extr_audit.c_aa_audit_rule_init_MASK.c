#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct aa_audit_rule {int /*<<< orphan*/  label; } ;
struct TYPE_4__ {TYPE_1__* unconfined; } ;
struct TYPE_3__ {int /*<<< orphan*/  label; } ;

/* Variables and functions */
#define  AUDIT_SUBJ_ROLE 128 
 int Audit_equal ; 
 int Audit_not_equal ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_audit_rule*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int) ; 
 struct aa_audit_rule* FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* root_ns ; 

int FUNC5(u32 field, u32 op, char *rulestr, void **vrule)
{
	struct aa_audit_rule *rule;

	switch (field) {
	case AUDIT_SUBJ_ROLE:
		if (op != Audit_equal && op != Audit_not_equal)
			return -EINVAL;
		break;
	default:
		return -EINVAL;
	}

	rule = FUNC4(sizeof(struct aa_audit_rule), GFP_KERNEL);

	if (!rule)
		return -ENOMEM;

	/* Currently rules are treated as coming from the root ns */
	rule->label = FUNC3(&root_ns->unconfined->label, rulestr,
				     GFP_KERNEL, true, false);
	if (FUNC0(rule->label)) {
		FUNC2(rule);
		return FUNC1(rule->label);
	}

	*vrule = rule;
	return 0;
}