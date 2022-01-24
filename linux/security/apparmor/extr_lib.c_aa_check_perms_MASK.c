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
typedef  int u32 ;
struct common_audit_data {int dummy; } ;
struct aa_profile {int /*<<< orphan*/  label; } ;
struct aa_perms {int allow; int deny; int audit; int kill; int complain; int hide; int quiet; } ;
struct TYPE_2__ {int request; int denied; int error; int /*<<< orphan*/ * label; } ;

/* Variables and functions */
 int AUDIT_APPARMOR_ALLOWED ; 
 int AUDIT_APPARMOR_AUDIT ; 
 int AUDIT_APPARMOR_DENIED ; 
 int AUDIT_APPARMOR_KILL ; 
 int EACCES ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,struct common_audit_data*,void (*) (struct audit_buffer*,void*)) ; 
 TYPE_1__* FUNC1 (struct common_audit_data*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct aa_profile *profile, struct aa_perms *perms,
		   u32 request, struct common_audit_data *sa,
		   void (*cb)(struct audit_buffer *, void *))
{
	int type, error;
	u32 denied = request & (~perms->allow | perms->deny);

	if (FUNC2(!denied)) {
		/* mask off perms that are not being force audited */
		request &= perms->audit;
		if (!request || !sa)
			return 0;

		type = AUDIT_APPARMOR_AUDIT;
		error = 0;
	} else {
		error = -EACCES;

		if (denied & perms->kill)
			type = AUDIT_APPARMOR_KILL;
		else if (denied == (denied & perms->complain))
			type = AUDIT_APPARMOR_ALLOWED;
		else
			type = AUDIT_APPARMOR_DENIED;

		if (denied == (denied & perms->hide))
			error = -ENOENT;

		denied &= ~perms->quiet;
		if (!sa || !denied)
			return error;
	}

	if (sa) {
		FUNC1(sa)->label = &profile->label;
		FUNC1(sa)->request = request;
		FUNC1(sa)->denied = denied;
		FUNC1(sa)->error = error;
		FUNC0(type, sa, cb);
	}

	if (type == AUDIT_APPARMOR_ALLOWED)
		error = 0;

	return error;
}