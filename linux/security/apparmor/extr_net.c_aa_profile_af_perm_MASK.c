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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct common_audit_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dfa; } ;
struct aa_profile {TYPE_1__ policy; } ;
struct aa_perms {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AA_CLASS_NET ; 
 scalar_t__ AF_MAX ; 
 unsigned int FUNC1 (struct aa_profile*,int /*<<< orphan*/ ) ; 
 int SOCK_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct aa_profile*,struct aa_perms*) ; 
 int FUNC3 (struct aa_profile*,struct aa_perms*,int /*<<< orphan*/ ,struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,struct aa_perms*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,unsigned int,char*,int) ; 
 int /*<<< orphan*/  audit_net_cb ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct aa_profile*) ; 

int FUNC8(struct aa_profile *profile, struct common_audit_data *sa,
		       u32 request, u16 family, int type)
{
	struct aa_perms perms = { };
	unsigned int state;
	__be16 buffer[2];

	FUNC0(family >= AF_MAX);
	FUNC0(type < 0 || type >= SOCK_MAX);

	if (FUNC7(profile))
		return 0;
	state = FUNC1(profile, AA_CLASS_NET);
	if (!state)
		return 0;

	buffer[0] = FUNC6(family);
	buffer[1] = FUNC6((u16) type);
	state = FUNC5(profile->policy.dfa, state, (char *) &buffer,
				 4);
	FUNC4(profile->policy.dfa, state, &perms);
	FUNC2(profile, &perms);

	return FUNC3(profile, &perms, request, sa, audit_net_cb);
}