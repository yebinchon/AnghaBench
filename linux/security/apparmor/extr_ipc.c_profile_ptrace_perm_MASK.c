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
struct common_audit_data {int dummy; } ;
struct aa_profile {int dummy; } ;
struct aa_perms {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {struct aa_label* peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  AA_CLASS_PTRACE ; 
 int /*<<< orphan*/  FUNC0 (struct aa_profile*,struct aa_perms*) ; 
 int FUNC1 (struct aa_profile*,struct aa_perms*,int /*<<< orphan*/ ,struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_profile*,struct aa_label*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aa_perms*) ; 
 TYPE_1__* FUNC3 (struct common_audit_data*) ; 
 int /*<<< orphan*/  audit_ptrace_cb ; 

__attribute__((used)) static int FUNC4(struct aa_profile *profile,
			     struct aa_label *peer, u32 request,
			     struct common_audit_data *sa)
{
	struct aa_perms perms = { };

	FUNC3(sa)->peer = peer;
	FUNC2(profile, peer, AA_CLASS_PTRACE, request,
			       &perms);
	FUNC0(profile, &perms);
	return FUNC1(profile, &perms, request, sa, audit_ptrace_cb);
}