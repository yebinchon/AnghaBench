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
struct smk_audit_info {int dummy; } ;
struct smack_known {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_AUDIT_DATA_TASK ; 
 int /*<<< orphan*/  FUNC0 (struct smk_audit_info*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smk_audit_info*,struct task_struct*) ; 
 int FUNC2 (struct task_struct*,int,int) ; 
 int FUNC3 (struct smack_known*,int,struct smk_audit_info*) ; 
 struct smack_known* FUNC4 (struct task_struct*) ; 

__attribute__((used)) static int FUNC5(struct task_struct *p, int access,
				const char *caller)
{
	struct smk_audit_info ad;
	struct smack_known *skp = FUNC4(p);
	int rc;

	FUNC0(&ad, caller, LSM_AUDIT_DATA_TASK);
	FUNC1(&ad, p);
	rc = FUNC3(skp, access, &ad);
	rc = FUNC2(p, access, rc);
	return rc;
}