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
struct aa_label {int dummy; } ;
struct aa_profile {struct aa_label label; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; scalar_t__ request; struct aa_label* peer; struct aa_label* label; } ;

/* Variables and functions */
 int /*<<< orphan*/  AA_CLASS_PTRACE ; 
 int /*<<< orphan*/  AUDIT_APPARMOR_AUTO ; 
 int /*<<< orphan*/  CAP_OPT_NONE ; 
 int /*<<< orphan*/  CAP_SYS_PTRACE ; 
 scalar_t__ FUNC0 (struct aa_profile*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct aa_profile*,struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct common_audit_data*) ; 
 int /*<<< orphan*/  audit_ptrace_cb ; 
 int FUNC4 (struct aa_profile*,struct aa_label*,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 scalar_t__ FUNC5 (struct aa_profile*) ; 

__attribute__((used)) static int FUNC6(struct aa_profile *tracer,
			       struct aa_label *tracee, u32 request,
			       struct common_audit_data *sa)
{
	if (FUNC5(tracer))
		return 0;

	if (FUNC0(tracer, AA_CLASS_PTRACE))
		return FUNC4(tracer, tracee, request, sa);

	/* profile uses the old style capability check for ptrace */
	if (&tracer->label == tracee)
		return 0;

	FUNC3(sa)->label = &tracer->label;
	FUNC3(sa)->peer = tracee;
	FUNC3(sa)->request = 0;
	FUNC3(sa)->error = FUNC2(&tracer->label, CAP_SYS_PTRACE,
				    CAP_OPT_NONE);

	return FUNC1(AUDIT_APPARMOR_AUTO, tracer, sa, audit_ptrace_cb);
}