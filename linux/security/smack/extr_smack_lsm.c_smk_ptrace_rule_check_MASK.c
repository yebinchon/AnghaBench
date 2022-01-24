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
struct task_smack {int dummy; } ;
struct smk_audit_info {int dummy; } ;
struct smack_known {int /*<<< orphan*/  smk_known; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_PTRACE ; 
 int EACCES ; 
 int /*<<< orphan*/  LSM_AUDIT_DATA_TASK ; 
 unsigned int PTRACE_MODE_ATTACH ; 
 unsigned int PTRACE_MODE_NOAUDIT ; 
 scalar_t__ SMACK_PTRACE_DRACONIAN ; 
 scalar_t__ SMACK_PTRACE_EXACT ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct task_smack* FUNC3 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct smk_audit_info*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct cred const*) ; 
 scalar_t__ smack_ptrace_rule ; 
 int /*<<< orphan*/  FUNC6 (struct smk_audit_info*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct smk_audit_info*,struct task_struct*) ; 
 struct smack_known* FUNC8 (struct task_smack*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int FUNC10 (struct task_smack*,struct smack_known*,int /*<<< orphan*/ ,struct smk_audit_info*) ; 

__attribute__((used)) static int FUNC11(struct task_struct *tracer,
				 struct smack_known *tracee_known,
				 unsigned int mode, const char *func)
{
	int rc;
	struct smk_audit_info ad, *saip = NULL;
	struct task_smack *tsp;
	struct smack_known *tracer_known;
	const struct cred *tracercred;

	if ((mode & PTRACE_MODE_NOAUDIT) == 0) {
		FUNC6(&ad, func, LSM_AUDIT_DATA_TASK);
		FUNC7(&ad, tracer);
		saip = &ad;
	}

	FUNC1();
	tracercred = FUNC0(tracer);
	tsp = FUNC3(tracercred);
	tracer_known = FUNC8(tsp);

	if ((mode & PTRACE_MODE_ATTACH) &&
	    (smack_ptrace_rule == SMACK_PTRACE_EXACT ||
	     smack_ptrace_rule == SMACK_PTRACE_DRACONIAN)) {
		if (tracer_known->smk_known == tracee_known->smk_known)
			rc = 0;
		else if (smack_ptrace_rule == SMACK_PTRACE_DRACONIAN)
			rc = -EACCES;
		else if (FUNC5(CAP_SYS_PTRACE, tracercred))
			rc = 0;
		else
			rc = -EACCES;

		if (saip)
			FUNC4(tracer_known->smk_known,
				  tracee_known->smk_known,
				  0, rc, saip);

		FUNC2();
		return rc;
	}

	/* In case of rule==SMACK_PTRACE_DEFAULT or mode==PTRACE_MODE_READ */
	rc = FUNC10(tsp, tracee_known, FUNC9(mode), saip);

	FUNC2();
	return rc;
}