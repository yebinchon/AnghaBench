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
typedef  int /*<<< orphan*/  u32 ;
struct common_audit_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * start; int /*<<< orphan*/  dfa; } ;
struct aa_profile {TYPE_1__ policy; } ;
struct aa_perms {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  signal; struct aa_label* peer; } ;

/* Variables and functions */
 size_t AA_CLASS_SIGNAL ; 
 int /*<<< orphan*/  FUNC0 (struct aa_profile*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_profile*,struct aa_perms*) ; 
 int FUNC2 (struct aa_profile*,struct aa_perms*,int /*<<< orphan*/ ,struct common_audit_data*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_profile*,struct aa_label*,unsigned int,int,int /*<<< orphan*/ ,struct aa_perms*) ; 
 TYPE_2__* FUNC5 (struct common_audit_data*) ; 
 int /*<<< orphan*/  audit_signal_cb ; 
 scalar_t__ FUNC6 (struct aa_profile*) ; 

__attribute__((used)) static int FUNC7(struct aa_profile *profile,
			       struct aa_label *peer, u32 request,
			       struct common_audit_data *sa)
{
	struct aa_perms perms;
	unsigned int state;

	if (FUNC6(profile) ||
	    !FUNC0(profile, AA_CLASS_SIGNAL))
		return 0;

	FUNC5(sa)->peer = peer;
	/* TODO: secondary cache check <profile, profile, perm> */
	state = FUNC3(profile->policy.dfa,
			    profile->policy.start[AA_CLASS_SIGNAL],
			    FUNC5(sa)->signal);
	FUNC4(profile, peer, state, false, request, &perms);
	FUNC1(profile, &perms);
	return FUNC2(profile, &perms, request, sa, audit_signal_cb);
}