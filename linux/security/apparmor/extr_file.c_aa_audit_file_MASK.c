#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct aa_profile {int dummy; } ;
struct aa_perms {int audit; int allow; int kill; int quiet; } ;
struct aa_label {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
struct TYPE_8__ {char const* target; int /*<<< orphan*/  ouid; } ;
struct TYPE_11__ {int request; char const* name; char const* info; int error; int denied; TYPE_1__ fs; struct aa_label* peer; } ;
struct TYPE_9__ {int /*<<< orphan*/ * tsk; } ;
struct TYPE_10__ {TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ AUDIT_ALL ; 
 int AUDIT_APPARMOR_AUDIT ; 
 int AUDIT_APPARMOR_AUTO ; 
 int AUDIT_APPARMOR_KILL ; 
 scalar_t__ FUNC1 (struct aa_profile*) ; 
 scalar_t__ AUDIT_NOQUIET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  LSM_AUDIT_DATA_TASK ; 
 int FUNC3 (int,struct aa_profile*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  file_audit_cb ; 
 scalar_t__ FUNC5 (int) ; 
 TYPE_3__ sa ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct aa_profile *profile, struct aa_perms *perms,
		  const char *op, u32 request, const char *name,
		  const char *target, struct aa_label *tlabel,
		  kuid_t ouid, const char *info, int error)
{
	int type = AUDIT_APPARMOR_AUTO;
	FUNC2(sa, LSM_AUDIT_DATA_TASK, op);

	sa.u.tsk = NULL;
	FUNC4(&sa)->request = request;
	FUNC4(&sa)->name = name;
	FUNC4(&sa)->fs.target = target;
	FUNC4(&sa)->peer = tlabel;
	FUNC4(&sa)->fs.ouid = ouid;
	FUNC4(&sa)->info = info;
	FUNC4(&sa)->error = error;
	sa.u.tsk = NULL;

	if (FUNC5(!FUNC4(&sa)->error)) {
		u32 mask = perms->audit;

		if (FUNC6(FUNC1(profile) == AUDIT_ALL))
			mask = 0xffff;

		/* mask off perms that are not being force audited */
		FUNC4(&sa)->request &= mask;

		if (FUNC5(!FUNC4(&sa)->request))
			return 0;
		type = AUDIT_APPARMOR_AUDIT;
	} else {
		/* only report permissions that were denied */
		FUNC4(&sa)->request = FUNC4(&sa)->request & ~perms->allow;
		FUNC0(!FUNC4(&sa)->request);

		if (FUNC4(&sa)->request & perms->kill)
			type = AUDIT_APPARMOR_KILL;

		/* quiet known rejects, assumes quiet and kill do not overlap */
		if ((FUNC4(&sa)->request & perms->quiet) &&
		    FUNC1(profile) != AUDIT_NOQUIET &&
		    FUNC1(profile) != AUDIT_ALL)
			FUNC4(&sa)->request &= ~perms->quiet;

		if (!FUNC4(&sa)->request)
			return FUNC4(&sa)->error;
	}

	FUNC4(&sa)->denied = FUNC4(&sa)->request & ~perms->allow;
	return FUNC3(type, profile, &sa, file_audit_cb);
}