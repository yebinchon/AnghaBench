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
struct TYPE_3__ {scalar_t__ tsk; } ;
struct common_audit_data {scalar_t__ type; TYPE_1__ u; } ;
struct aa_profile {int /*<<< orphan*/  label; } ;
struct TYPE_4__ {int error; int type; int /*<<< orphan*/ * label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ AUDIT_ALL ; 
 int AUDIT_APPARMOR_ALLOWED ; 
 int AUDIT_APPARMOR_AUDIT ; 
 int AUDIT_APPARMOR_AUTO ; 
 int AUDIT_APPARMOR_DENIED ; 
 int AUDIT_APPARMOR_KILL ; 
 scalar_t__ FUNC1 (struct aa_profile*) ; 
 scalar_t__ AUDIT_QUIET ; 
 scalar_t__ FUNC2 (struct aa_profile*) ; 
 scalar_t__ FUNC3 (struct aa_profile*) ; 
 scalar_t__ LSM_AUDIT_DATA_TASK ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC4 (int,struct common_audit_data*,void (*) (struct audit_buffer*,void*)) ; 
 TYPE_2__* FUNC5 (struct common_audit_data*) ; 
 int FUNC6 (int) ; 
 scalar_t__ current ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC9(int type, struct aa_profile *profile, struct common_audit_data *sa,
	     void (*cb) (struct audit_buffer *, void *))
{
	FUNC0(!profile);

	if (type == AUDIT_APPARMOR_AUTO) {
		if (FUNC7(!FUNC5(sa)->error)) {
			if (FUNC1(profile) != AUDIT_ALL)
				return 0;
			type = AUDIT_APPARMOR_AUDIT;
		} else if (FUNC2(profile))
			type = AUDIT_APPARMOR_ALLOWED;
		else
			type = AUDIT_APPARMOR_DENIED;
	}
	if (FUNC1(profile) == AUDIT_QUIET ||
	    (type == AUDIT_APPARMOR_DENIED &&
	     FUNC1(profile) == AUDIT_QUIET))
		return FUNC5(sa)->error;

	if (FUNC3(profile) && type == AUDIT_APPARMOR_DENIED)
		type = AUDIT_APPARMOR_KILL;

	FUNC5(sa)->label = &profile->label;

	FUNC4(type, sa, cb);

	if (FUNC5(sa)->type == AUDIT_APPARMOR_KILL)
		(void)FUNC8(SIGKILL, NULL,
			sa->type == LSM_AUDIT_DATA_TASK && sa->u.tsk ?
				    sa->u.tsk : current);

	if (FUNC5(sa)->type == AUDIT_APPARMOR_ALLOWED)
		return FUNC6(FUNC5(sa)->error);

	return FUNC5(sa)->error;
}