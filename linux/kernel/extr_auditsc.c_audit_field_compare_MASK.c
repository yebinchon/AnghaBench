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
struct task_struct {int dummy; } ;
struct cred {int /*<<< orphan*/  fsgid; int /*<<< orphan*/  sgid; int /*<<< orphan*/  egid; int /*<<< orphan*/  gid; int /*<<< orphan*/  fsuid; int /*<<< orphan*/  suid; int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; } ;
struct audit_names {int dummy; } ;
struct audit_field {int val; int /*<<< orphan*/  op; } ;
struct audit_context {int dummy; } ;

/* Variables and functions */
#define  AUDIT_COMPARE_AUID_TO_EUID 152 
#define  AUDIT_COMPARE_AUID_TO_FSUID 151 
#define  AUDIT_COMPARE_AUID_TO_OBJ_UID 150 
#define  AUDIT_COMPARE_AUID_TO_SUID 149 
#define  AUDIT_COMPARE_EGID_TO_FSGID 148 
#define  AUDIT_COMPARE_EGID_TO_OBJ_GID 147 
#define  AUDIT_COMPARE_EGID_TO_SGID 146 
#define  AUDIT_COMPARE_EUID_TO_FSUID 145 
#define  AUDIT_COMPARE_EUID_TO_OBJ_UID 144 
#define  AUDIT_COMPARE_EUID_TO_SUID 143 
#define  AUDIT_COMPARE_FSGID_TO_OBJ_GID 142 
#define  AUDIT_COMPARE_FSUID_TO_OBJ_UID 141 
#define  AUDIT_COMPARE_GID_TO_EGID 140 
#define  AUDIT_COMPARE_GID_TO_FSGID 139 
#define  AUDIT_COMPARE_GID_TO_OBJ_GID 138 
#define  AUDIT_COMPARE_GID_TO_SGID 137 
#define  AUDIT_COMPARE_SGID_TO_FSGID 136 
#define  AUDIT_COMPARE_SGID_TO_OBJ_GID 135 
#define  AUDIT_COMPARE_SUID_TO_FSUID 134 
#define  AUDIT_COMPARE_SUID_TO_OBJ_UID 133 
#define  AUDIT_COMPARE_UID_TO_AUID 132 
#define  AUDIT_COMPARE_UID_TO_EUID 131 
#define  AUDIT_COMPARE_UID_TO_FSUID 130 
#define  AUDIT_COMPARE_UID_TO_OBJ_UID 129 
#define  AUDIT_COMPARE_UID_TO_SUID 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct audit_names*,struct audit_field*,struct audit_context*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct audit_names*,struct audit_field*,struct audit_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct task_struct *tsk,
			       const struct cred *cred,
			       struct audit_field *f,
			       struct audit_context *ctx,
			       struct audit_names *name)
{
	switch (f->val) {
	/* process to file object comparisons */
	case AUDIT_COMPARE_UID_TO_OBJ_UID:
		return FUNC2(cred->uid, name, f, ctx);
	case AUDIT_COMPARE_GID_TO_OBJ_GID:
		return FUNC1(cred->gid, name, f, ctx);
	case AUDIT_COMPARE_EUID_TO_OBJ_UID:
		return FUNC2(cred->euid, name, f, ctx);
	case AUDIT_COMPARE_EGID_TO_OBJ_GID:
		return FUNC1(cred->egid, name, f, ctx);
	case AUDIT_COMPARE_AUID_TO_OBJ_UID:
		return FUNC2(FUNC3(tsk), name, f, ctx);
	case AUDIT_COMPARE_SUID_TO_OBJ_UID:
		return FUNC2(cred->suid, name, f, ctx);
	case AUDIT_COMPARE_SGID_TO_OBJ_GID:
		return FUNC1(cred->sgid, name, f, ctx);
	case AUDIT_COMPARE_FSUID_TO_OBJ_UID:
		return FUNC2(cred->fsuid, name, f, ctx);
	case AUDIT_COMPARE_FSGID_TO_OBJ_GID:
		return FUNC1(cred->fsgid, name, f, ctx);
	/* uid comparisons */
	case AUDIT_COMPARE_UID_TO_AUID:
		return FUNC5(cred->uid, f->op,
					    FUNC3(tsk));
	case AUDIT_COMPARE_UID_TO_EUID:
		return FUNC5(cred->uid, f->op, cred->euid);
	case AUDIT_COMPARE_UID_TO_SUID:
		return FUNC5(cred->uid, f->op, cred->suid);
	case AUDIT_COMPARE_UID_TO_FSUID:
		return FUNC5(cred->uid, f->op, cred->fsuid);
	/* auid comparisons */
	case AUDIT_COMPARE_AUID_TO_EUID:
		return FUNC5(FUNC3(tsk), f->op,
					    cred->euid);
	case AUDIT_COMPARE_AUID_TO_SUID:
		return FUNC5(FUNC3(tsk), f->op,
					    cred->suid);
	case AUDIT_COMPARE_AUID_TO_FSUID:
		return FUNC5(FUNC3(tsk), f->op,
					    cred->fsuid);
	/* euid comparisons */
	case AUDIT_COMPARE_EUID_TO_SUID:
		return FUNC5(cred->euid, f->op, cred->suid);
	case AUDIT_COMPARE_EUID_TO_FSUID:
		return FUNC5(cred->euid, f->op, cred->fsuid);
	/* suid comparisons */
	case AUDIT_COMPARE_SUID_TO_FSUID:
		return FUNC5(cred->suid, f->op, cred->fsuid);
	/* gid comparisons */
	case AUDIT_COMPARE_GID_TO_EGID:
		return FUNC4(cred->gid, f->op, cred->egid);
	case AUDIT_COMPARE_GID_TO_SGID:
		return FUNC4(cred->gid, f->op, cred->sgid);
	case AUDIT_COMPARE_GID_TO_FSGID:
		return FUNC4(cred->gid, f->op, cred->fsgid);
	/* egid comparisons */
	case AUDIT_COMPARE_EGID_TO_SGID:
		return FUNC4(cred->egid, f->op, cred->sgid);
	case AUDIT_COMPARE_EGID_TO_FSGID:
		return FUNC4(cred->egid, f->op, cred->fsgid);
	/* sgid comparison */
	case AUDIT_COMPARE_SGID_TO_FSGID:
		return FUNC4(cred->sgid, f->op, cred->fsgid);
	default:
		FUNC0(1, "Missing AUDIT_COMPARE define.  Report as a bug\n");
		return 0;
	}
	return 0;
}