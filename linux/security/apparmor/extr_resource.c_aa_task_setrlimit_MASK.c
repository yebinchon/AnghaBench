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
struct rlimit {int /*<<< orphan*/  rlim_max; } ;
struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_OPT_NOAUDIT ; 
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 scalar_t__ FUNC1 (struct aa_label*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aa_label* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_profile*,unsigned int,int /*<<< orphan*/ ,struct aa_label*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct aa_label*,struct aa_profile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aa_profile*,unsigned int,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(struct aa_label *label, struct task_struct *task,
		      unsigned int resource, struct rlimit *new_rlim)
{
	struct aa_profile *profile;
	struct aa_label *peer;
	int error = 0;

	FUNC8();
	peer = FUNC2(FUNC0(task));
	FUNC9();

	/* TODO: extend resource control to handle other (non current)
	 * profiles.  AppArmor rules currently have the implicit assumption
	 * that the task is setting the resource of a task confined with
	 * the same profile or that the task setting the resource of another
	 * task has CAP_SYS_RESOURCE.
	 */

	if (label != peer &&
	    FUNC1(label, CAP_SYS_RESOURCE, CAP_OPT_NOAUDIT) != 0)
		error = FUNC5(label, profile,
				FUNC4(profile, resource,
					       new_rlim->rlim_max, peer,
					       "cap_sys_resource", -EACCES));
	else
		error = FUNC6(label, profile,
				FUNC7(profile, resource, new_rlim));
	FUNC3(peer);

	return error;
}