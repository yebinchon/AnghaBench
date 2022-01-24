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
struct selinux_state {TYPE_4__* ss; } ;
struct TYPE_6__ {struct mls_level* level; } ;
struct TYPE_7__ {TYPE_2__ range; int /*<<< orphan*/  type; int /*<<< orphan*/  role; int /*<<< orphan*/  user; } ;
struct selinux_audit_rule {scalar_t__ au_seqno; TYPE_3__ au_ctxt; } ;
struct mls_level {int dummy; } ;
struct TYPE_5__ {struct mls_level* level; } ;
struct context {TYPE_1__ range; int /*<<< orphan*/  type; int /*<<< orphan*/  role; int /*<<< orphan*/  user; } ;
struct TYPE_8__ {scalar_t__ latest_granting; int /*<<< orphan*/  policy_rwlock; int /*<<< orphan*/  sidtab; } ;

/* Variables and functions */
#define  AUDIT_OBJ_LEV_HIGH 143 
#define  AUDIT_OBJ_LEV_LOW 142 
#define  AUDIT_OBJ_ROLE 141 
#define  AUDIT_OBJ_TYPE 140 
#define  AUDIT_OBJ_USER 139 
#define  AUDIT_SUBJ_CLR 138 
#define  AUDIT_SUBJ_ROLE 137 
#define  AUDIT_SUBJ_SEN 136 
#define  AUDIT_SUBJ_TYPE 135 
#define  AUDIT_SUBJ_USER 134 
#define  Audit_equal 133 
#define  Audit_ge 132 
#define  Audit_gt 131 
#define  Audit_le 130 
#define  Audit_lt 129 
#define  Audit_not_equal 128 
 int ENOENT ; 
 int ESTALE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (struct mls_level*,struct mls_level*) ; 
 int FUNC2 (struct mls_level*,struct mls_level*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct selinux_state selinux_state ; 
 struct context* FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(u32 sid, u32 field, u32 op, void *vrule)
{
	struct selinux_state *state = &selinux_state;
	struct context *ctxt;
	struct mls_level *level;
	struct selinux_audit_rule *rule = vrule;
	int match = 0;

	if (FUNC6(!rule)) {
		FUNC0(1, "selinux_audit_rule_match: missing rule\n");
		return -ENOENT;
	}

	FUNC3(&state->ss->policy_rwlock);

	if (rule->au_seqno < state->ss->latest_granting) {
		match = -ESTALE;
		goto out;
	}

	ctxt = FUNC5(state->ss->sidtab, sid);
	if (FUNC6(!ctxt)) {
		FUNC0(1, "selinux_audit_rule_match: unrecognized SID %d\n",
			  sid);
		match = -ENOENT;
		goto out;
	}

	/* a field/op pair that is not caught here will simply fall through
	   without a match */
	switch (field) {
	case AUDIT_SUBJ_USER:
	case AUDIT_OBJ_USER:
		switch (op) {
		case Audit_equal:
			match = (ctxt->user == rule->au_ctxt.user);
			break;
		case Audit_not_equal:
			match = (ctxt->user != rule->au_ctxt.user);
			break;
		}
		break;
	case AUDIT_SUBJ_ROLE:
	case AUDIT_OBJ_ROLE:
		switch (op) {
		case Audit_equal:
			match = (ctxt->role == rule->au_ctxt.role);
			break;
		case Audit_not_equal:
			match = (ctxt->role != rule->au_ctxt.role);
			break;
		}
		break;
	case AUDIT_SUBJ_TYPE:
	case AUDIT_OBJ_TYPE:
		switch (op) {
		case Audit_equal:
			match = (ctxt->type == rule->au_ctxt.type);
			break;
		case Audit_not_equal:
			match = (ctxt->type != rule->au_ctxt.type);
			break;
		}
		break;
	case AUDIT_SUBJ_SEN:
	case AUDIT_SUBJ_CLR:
	case AUDIT_OBJ_LEV_LOW:
	case AUDIT_OBJ_LEV_HIGH:
		level = ((field == AUDIT_SUBJ_SEN ||
			  field == AUDIT_OBJ_LEV_LOW) ?
			 &ctxt->range.level[0] : &ctxt->range.level[1]);
		switch (op) {
		case Audit_equal:
			match = FUNC2(&rule->au_ctxt.range.level[0],
					     level);
			break;
		case Audit_not_equal:
			match = !FUNC2(&rule->au_ctxt.range.level[0],
					      level);
			break;
		case Audit_lt:
			match = (FUNC1(&rule->au_ctxt.range.level[0],
					       level) &&
				 !FUNC2(&rule->au_ctxt.range.level[0],
					       level));
			break;
		case Audit_le:
			match = FUNC1(&rule->au_ctxt.range.level[0],
					      level);
			break;
		case Audit_gt:
			match = (FUNC1(level,
					      &rule->au_ctxt.range.level[0]) &&
				 !FUNC2(level,
					       &rule->au_ctxt.range.level[0]));
			break;
		case Audit_ge:
			match = FUNC1(level,
					      &rule->au_ctxt.range.level[0]);
			break;
		}
	}

out:
	FUNC4(&state->ss->policy_rwlock);
	return match;
}